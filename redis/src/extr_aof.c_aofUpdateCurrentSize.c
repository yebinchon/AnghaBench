
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct redis_stat {int st_size; } ;
typedef int mstime_t ;
struct TYPE_2__ {int aof_current_size; int aof_fd; } ;


 int LL_WARNING ;
 int errno ;
 int latencyAddSampleIfNeeded (char*,int ) ;
 int latencyEndMonitor (int ) ;
 int latencyStartMonitor (int ) ;
 int redis_fstat (int ,struct redis_stat*) ;
 TYPE_1__ server ;
 int serverLog (int ,char*,int ) ;
 int strerror (int ) ;

void aofUpdateCurrentSize(void) {
    struct redis_stat sb;
    mstime_t latency;

    latencyStartMonitor(latency);
    if (redis_fstat(server.aof_fd,&sb) == -1) {
        serverLog(LL_WARNING,"Unable to obtain the AOF file length. stat: %s",
            strerror(errno));
    } else {
        server.aof_current_size = sb.st_size;
    }
    latencyEndMonitor(latency);
    latencyAddSampleIfNeeded("aof-fstat",latency);
}
