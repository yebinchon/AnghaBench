
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct prioq_item {int dummy; } ;
struct TYPE_7__ {struct prioq_item* items; } ;
typedef TYPE_1__ Prioq ;


 int assert (TYPE_1__*) ;
 struct prioq_item* find_item (TYPE_1__*,void*,unsigned int*) ;
 unsigned int shuffle_down (TYPE_1__*,unsigned int) ;
 int shuffle_up (TYPE_1__*,unsigned int) ;

int prioq_reshuffle(Prioq *q, void *data, unsigned *idx) {
        struct prioq_item *i;
        unsigned k;

        assert(q);

        i = find_item(q, data, idx);
        if (!i)
                return 0;

        k = i - q->items;
        k = shuffle_down(q, k);
        shuffle_up(q, k);
        return 1;
}
