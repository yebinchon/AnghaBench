
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ value; } ;
typedef TYPE_1__ listNode ;
typedef int client ;
struct TYPE_5__ {int slaves; } ;


 int freeClient (int *) ;
 TYPE_1__* listFirst (int ) ;
 scalar_t__ listLength (int ) ;
 TYPE_2__ server ;

void disconnectSlaves(void) {
    while (listLength(server.slaves)) {
        listNode *ln = listFirst(server.slaves);
        freeClient((client*)ln->value);
    }
}
