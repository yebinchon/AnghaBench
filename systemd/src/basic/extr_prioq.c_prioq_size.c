
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n_items; } ;
typedef TYPE_1__ Prioq ;



unsigned prioq_size(Prioq *q) {

        if (!q)
                return 0;

        return q->n_items;
}
