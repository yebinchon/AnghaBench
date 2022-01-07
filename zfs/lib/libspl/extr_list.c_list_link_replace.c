
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* list_prev; TYPE_1__* list_next; } ;
typedef TYPE_3__ list_node_t ;
struct TYPE_8__ {TYPE_3__* list_next; } ;
struct TYPE_7__ {TYPE_3__* list_prev; } ;


 int ASSERT (int) ;
 int list_link_active (TYPE_3__*) ;

void
list_link_replace(list_node_t *lold, list_node_t *lnew)
{
 ASSERT(list_link_active(lold));
 ASSERT(!list_link_active(lnew));

 lnew->list_next = lold->list_next;
 lnew->list_prev = lold->list_prev;
 lold->list_prev->list_next = lnew;
 lold->list_next->list_prev = lnew;
 lold->list_next = lold->list_prev = ((void*)0);
}
