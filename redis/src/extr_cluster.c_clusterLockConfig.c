
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C_ERR ;
 int C_OK ;
 scalar_t__ EWOULDBLOCK ;
 int LL_WARNING ;
 int LOCK_EX ;
 int LOCK_NB ;
 int O_CREAT ;
 int O_WRONLY ;
 int close (int) ;
 scalar_t__ errno ;
 int flock (int,int) ;
 int open (char*,int,int) ;
 int serverLog (int ,char*,char*,...) ;
 int strerror (scalar_t__) ;

int clusterLockConfig(char *filename) {
    int fd = open(filename,O_WRONLY|O_CREAT,0644);
    if (fd == -1) {
        serverLog(LL_WARNING,
            "Can't open %s in order to acquire a lock: %s",
            filename, strerror(errno));
        return C_ERR;
    }

    if (flock(fd,LOCK_EX|LOCK_NB) == -1) {
        if (errno == EWOULDBLOCK) {
            serverLog(LL_WARNING,
                 "Sorry, the cluster configuration file %s is already used "
                 "by a different Redis Cluster node. Please make sure that "
                 "different nodes use different cluster configuration "
                 "files.", filename);
        } else {
            serverLog(LL_WARNING,
                "Impossible to lock %s: %s", filename, strerror(errno));
        }
        close(fd);
        return C_ERR;
    }




    return C_OK;
}
