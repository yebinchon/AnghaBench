
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_5__ {TYPE_2__* value; } ;
typedef TYPE_1__ listNode ;
typedef int listIter ;
struct TYPE_6__ {scalar_t__ repl_ack_time; scalar_t__ replstate; } ;
typedef TYPE_2__ client ;
struct TYPE_7__ {scalar_t__ repl_min_slaves_max_lag; scalar_t__ unixtime; int repl_good_slaves_count; int slaves; int repl_min_slaves_to_write; } ;


 scalar_t__ SLAVE_STATE_ONLINE ;
 TYPE_1__* listNext (int *) ;
 int listRewind (int ,int *) ;
 TYPE_3__ server ;

void refreshGoodSlavesCount(void) {
    listIter li;
    listNode *ln;
    int good = 0;

    if (!server.repl_min_slaves_to_write ||
        !server.repl_min_slaves_max_lag) return;

    listRewind(server.slaves,&li);
    while((ln = listNext(&li))) {
        client *slave = ln->value;
        time_t lag = server.unixtime - slave->repl_ack_time;

        if (slave->replstate == SLAVE_STATE_ONLINE &&
            lag <= server.repl_min_slaves_max_lag) good++;
    }
    server.repl_good_slaves_count = good;
}
