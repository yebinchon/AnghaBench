
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int n_items; scalar_t__ (* compare_func ) (int ,int ) ;TYPE_1__* items; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_2__ Prioq ;


 int assert (TYPE_2__*) ;
 scalar_t__ stub1 (int ,int ) ;
 scalar_t__ stub2 (int ,int ) ;
 int swap (TYPE_2__*,unsigned int,unsigned int) ;

__attribute__((used)) static unsigned shuffle_down(Prioq *q, unsigned idx) {
        assert(q);

        for (;;) {
                unsigned j, k, s;

                k = (idx+1)*2;
                j = k-1;

                if (j >= q->n_items)
                        break;

                if (q->compare_func(q->items[j].data, q->items[idx].data) < 0)



                        s = j;
                else
                        s = idx;

                if (k < q->n_items &&
                    q->compare_func(q->items[k].data, q->items[s].data) < 0)



                        s = k;



                if (s == idx)

                        break;

                swap(q, idx, s);
                idx = s;
        }

        return idx;
}
