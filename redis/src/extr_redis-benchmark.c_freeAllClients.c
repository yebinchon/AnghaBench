
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int value; struct TYPE_5__* next; } ;
typedef TYPE_2__ listNode ;
struct TYPE_6__ {TYPE_1__* clients; } ;
struct TYPE_4__ {TYPE_2__* head; } ;


 TYPE_3__ config ;
 int freeClient (int ) ;

__attribute__((used)) static void freeAllClients(void) {
    listNode *ln = config.clients->head, *next;

    while(ln) {
        next = ln->next;
        freeClient(ln->value);
        ln = next;
    }
}
