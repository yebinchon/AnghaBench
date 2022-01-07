
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hz; int configfile; } ;


 int CONFIG_DEFAULT_HZ ;
 scalar_t__ EOF ;
 int LL_WARNING ;
 int O_RDONLY ;
 scalar_t__ close (int) ;
 int errno ;
 int fsync (int) ;
 int open (int ,int ) ;
 int rewriteConfig (int ) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int ) ;
 int strerror (int ) ;

void sentinelFlushConfig(void) {
    int fd = -1;
    int saved_hz = server.hz;
    int rewrite_status;

    server.hz = CONFIG_DEFAULT_HZ;
    rewrite_status = rewriteConfig(server.configfile);
    server.hz = saved_hz;

    if (rewrite_status == -1) goto werr;
    if ((fd = open(server.configfile,O_RDONLY)) == -1) goto werr;
    if (fsync(fd) == -1) goto werr;
    if (close(fd) == EOF) goto werr;
    return;

werr:
    if (fd != -1) close(fd);
    serverLog(LL_WARNING,"WARNING: Sentinel was not able to save the new configuration on disk!!!: %s", strerror(errno));
}
