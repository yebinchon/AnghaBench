
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; struct TYPE_5__* next; } ;
typedef TYPE_1__ listNode ;
struct TYPE_6__ {unsigned long len; int * tail; TYPE_1__* head; int (* free ) (int ) ;} ;
typedef TYPE_2__ list ;


 int stub1 (int ) ;
 int zfree (TYPE_1__*) ;

void listEmpty(list *list)
{
    unsigned long len;
    listNode *current, *next;

    current = list->head;
    len = list->len;
    while(len--) {
        next = current->next;
        if (list->free) list->free(current->value);
        zfree(current);
        current = next;
    }
    list->head = list->tail = ((void*)0);
    list->len = 0;
}
