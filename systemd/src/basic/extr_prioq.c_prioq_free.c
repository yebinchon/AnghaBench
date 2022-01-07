
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int items; } ;
typedef TYPE_1__ Prioq ;


 int free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;

Prioq* prioq_free(Prioq *q) {
        if (!q)
                return ((void*)0);

        free(q->items);
        return mfree(q);
}
