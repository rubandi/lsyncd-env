target1, target2 = os.getenv("SYNC_TARGETS"):match('"([^,]+),%s*([^,]+)"')

settings {
    logfile    = "/var/log/lsyncd/lsyncd.log",
    statusFile = "/var/log/lsyncd/lsyncd.status",
    nodaemon   = true
}

sync {
    default.rsyncssh,
    source    = "/data/",
    host      = "user1@" .. target1,
    targetdir = "/home/user1/data/",
    delay     = 10,
    rsync = {
        rsh = "/usr/bin/sshpass -p password1 /usr/bin/ssh -o StrictHostKeyChecking=no"  
    }
}

sync {
    default.rsyncssh,
    source    = "/data/",
    host      = "user2@" .. target2,
    targetdir = "/home/user2/data/",
    delay     = 10,
    rsync = {
        rsh = "/usr/bin/sshpass -p password2 /usr/bin/ssh -o StrictHostKeyChecking=no"
    }
}
