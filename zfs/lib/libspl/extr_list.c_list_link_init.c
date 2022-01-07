
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * list_prev; int * list_next; } ;
typedef TYPE_1__ list_node_t ;



void
list_link_init(list_node_t *ln)
{
 ln->list_next = ((void*)0);
 ln->list_prev = ((void*)0);
}
