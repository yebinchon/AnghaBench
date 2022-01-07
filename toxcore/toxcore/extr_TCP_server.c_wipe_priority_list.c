
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ TCP_Priority_List ;


 int free (TYPE_1__*) ;

void wipe_priority_list(TCP_Priority_List *p)
{
    while (p) {
        TCP_Priority_List *pp = p;
        p = p->next;
        free(pp);
    }
}
