
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* candidates; struct TYPE_4__* list; } ;
typedef TYPE_1__ Assoc ;


 int free (TYPE_1__*) ;

void kill_Assoc(Assoc *assoc)
{
    if (assoc) {
        free(assoc->candidates->list);
        free(assoc->candidates);
        free(assoc);
    }
}
