
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int robj ;
typedef int client ;
struct TYPE_2__ {long long slowlog_log_slower_than; scalar_t__ slowlog_max_len; int slowlog; } ;


 int listAddNodeHead (int ,int ) ;
 int listDelNode (int ,int ) ;
 int listLast (int ) ;
 scalar_t__ listLength (int ) ;
 TYPE_1__ server ;
 int slowlogCreateEntry (int *,int **,int,long long) ;

void slowlogPushEntryIfNeeded(client *c, robj **argv, int argc, long long duration) {
    if (server.slowlog_log_slower_than < 0) return;
    if (duration >= server.slowlog_log_slower_than)
        listAddNodeHead(server.slowlog,
                        slowlogCreateEntry(c,argv,argc,duration));


    while (listLength(server.slowlog) > server.slowlog_max_len)
        listDelNode(server.slowlog,listLast(server.slowlog));
}
