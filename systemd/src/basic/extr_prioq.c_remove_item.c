
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prioq_item {int n_items; unsigned int* idx; int data; struct prioq_item* items; } ;
typedef struct prioq_item Prioq ;


 int assert (struct prioq_item*) ;
 unsigned int shuffle_down (struct prioq_item*,unsigned int) ;
 int shuffle_up (struct prioq_item*,unsigned int) ;

__attribute__((used)) static void remove_item(Prioq *q, struct prioq_item *i) {
        struct prioq_item *l;

        assert(q);
        assert(i);

        l = q->items + q->n_items - 1;

        if (i == l)

                q->n_items--;
        else {
                unsigned k;




                k = i - q->items;

                i->data = l->data;
                i->idx = l->idx;
                if (i->idx)
                        *i->idx = k;
                q->n_items--;

                k = shuffle_down(q, k);
                shuffle_up(q, k);
        }
}
