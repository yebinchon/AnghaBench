
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; TYPE_2__* tail; TYPE_1__* head; } ;
typedef TYPE_3__ list ;
struct TYPE_7__ {TYPE_1__* next; } ;
struct TYPE_6__ {TYPE_2__* prev; } ;



void listJoin(list *l, list *o) {
    if (o->head)
        o->head->prev = l->tail;

    if (l->tail)
        l->tail->next = o->head;
    else
        l->head = o->head;

    if (o->tail) l->tail = o->tail;
    l->len += o->len;


    o->head = o->tail = ((void*)0);
    o->len = 0;
}
