
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cluster; } ;
struct TYPE_3__ {scalar_t__ mf_end; int mf_can_start; scalar_t__ mf_master_offset; } ;


 int LL_WARNING ;
 scalar_t__ replicationGetSlaveOffset () ;
 TYPE_2__ server ;
 int serverLog (int ,char*) ;

void clusterHandleManualFailover(void) {

    if (server.cluster->mf_end == 0) return;



    if (server.cluster->mf_can_start) return;

    if (server.cluster->mf_master_offset == 0) return;

    if (server.cluster->mf_master_offset == replicationGetSlaveOffset()) {


        server.cluster->mf_can_start = 1;
        serverLog(LL_WARNING,
            "All master replication stream processed, "
            "manual failover can start.");
    }
}
