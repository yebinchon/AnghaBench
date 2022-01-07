
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * list_next; } ;
typedef TYPE_1__ list_node_t ;



int
list_link_active(list_node_t *ln)
{
 return (ln->list_next != ((void*)0));
}
