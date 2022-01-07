
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int masters; } ;
struct TYPE_3__ {int hz; } ;


 int CONFIG_DEFAULT_HZ ;
 int rand () ;
 TYPE_2__ sentinel ;
 int sentinelCheckTiltCondition () ;
 int sentinelCollectTerminatedScripts () ;
 int sentinelHandleDictOfRedisInstances (int ) ;
 int sentinelKillTimedoutScripts () ;
 int sentinelRunPendingScripts () ;
 TYPE_1__ server ;

void sentinelTimer(void) {
    sentinelCheckTiltCondition();
    sentinelHandleDictOfRedisInstances(sentinel.masters);
    sentinelRunPendingScripts();
    sentinelCollectTerminatedScripts();
    sentinelKillTimedoutScripts();







    server.hz = CONFIG_DEFAULT_HZ + rand() % CONFIG_DEFAULT_HZ;
}
