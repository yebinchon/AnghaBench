
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long long stat_fork_time; double stat_fork_rate; } ;


 int closeListeningSockets (int ) ;
 int fork () ;
 int latencyAddSampleIfNeeded (char*,int) ;
 TYPE_1__ server ;
 int setupChildSignalHandlers () ;
 int updateDictResizePolicy () ;
 long long ustime () ;
 scalar_t__ zmalloc_used_memory () ;

int redisFork() {
    int childpid;
    long long start = ustime();
    if ((childpid = fork()) == 0) {

        closeListeningSockets(0);
        setupChildSignalHandlers();
    } else {

        server.stat_fork_time = ustime()-start;
        server.stat_fork_rate = (double) zmalloc_used_memory() * 1000000 / server.stat_fork_time / (1024*1024*1024);
        latencyAddSampleIfNeeded("fork",server.stat_fork_time/1000);
        if (childpid == -1) {
            return -1;
        }
        updateDictResizePolicy();
    }
    return childpid;
}
