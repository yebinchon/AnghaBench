
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void* data; } ;
struct TYPE_5__ {scalar_t__ n_items; TYPE_3__* items; } ;
typedef TYPE_1__ Prioq ;


 int remove_item (TYPE_1__*,TYPE_3__*) ;

void *prioq_pop(Prioq *q) {
        void *data;

        if (!q)
                return ((void*)0);

        if (q->n_items <= 0)
                return ((void*)0);

        data = q->items[0].data;
        remove_item(q, q->items);
        return data;
}
