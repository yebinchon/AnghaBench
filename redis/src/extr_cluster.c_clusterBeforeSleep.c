
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {int todo_before_sleep; } ;


 int CLUSTER_TODO_FSYNC_CONFIG ;
 int CLUSTER_TODO_HANDLE_FAILOVER ;
 int CLUSTER_TODO_SAVE_CONFIG ;
 int CLUSTER_TODO_UPDATE_STATE ;
 int clusterHandleSlaveFailover () ;
 int clusterSaveConfigOrDie (int) ;
 int clusterUpdateState () ;
 TYPE_2__ server ;

void clusterBeforeSleep(void) {


    if (server.cluster->todo_before_sleep & CLUSTER_TODO_HANDLE_FAILOVER)
        clusterHandleSlaveFailover();


    if (server.cluster->todo_before_sleep & CLUSTER_TODO_UPDATE_STATE)
        clusterUpdateState();


    if (server.cluster->todo_before_sleep & CLUSTER_TODO_SAVE_CONFIG) {
        int fsync = server.cluster->todo_before_sleep &
                    CLUSTER_TODO_FSYNC_CONFIG;
        clusterSaveConfigOrDie(fsync);
    }



    server.cluster->todo_before_sleep = 0;
}
