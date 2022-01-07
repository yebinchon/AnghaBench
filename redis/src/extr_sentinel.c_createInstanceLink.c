
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refcount; int disconnected; void* last_pong_time; void* last_avail_time; scalar_t__ last_ping_time; void* act_ping_time; scalar_t__ pc_last_activity; scalar_t__ last_reconn_time; scalar_t__ pc_conn_time; scalar_t__ cc_conn_time; int * pc; int * cc; scalar_t__ pending_commands; } ;
typedef TYPE_1__ instanceLink ;


 void* mstime () ;
 TYPE_1__* zmalloc (int) ;

instanceLink *createInstanceLink(void) {
    instanceLink *link = zmalloc(sizeof(*link));

    link->refcount = 1;
    link->disconnected = 1;
    link->pending_commands = 0;
    link->cc = ((void*)0);
    link->pc = ((void*)0);
    link->cc_conn_time = 0;
    link->pc_conn_time = 0;
    link->last_reconn_time = 0;
    link->pc_last_activity = 0;




    link->act_ping_time = mstime();
    link->last_ping_time = 0;
    link->last_avail_time = mstime();
    link->last_pong_time = mstime();
    return link;
}
