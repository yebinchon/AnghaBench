
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* cluster; scalar_t__ clients_pause_end_time; } ;
struct TYPE_3__ {scalar_t__ mf_master_offset; int * mf_slave; scalar_t__ mf_can_start; scalar_t__ mf_end; } ;


 scalar_t__ clientsArePaused () ;
 TYPE_2__ server ;

void resetManualFailover(void) {
    if (server.cluster->mf_end && clientsArePaused()) {
        server.clients_pause_end_time = 0;
        clientsArePaused();
    }
    server.cluster->mf_end = 0;
    server.cluster->mf_can_start = 0;
    server.cluster->mf_slave = ((void*)0);
    server.cluster->mf_master_offset = 0;
}
