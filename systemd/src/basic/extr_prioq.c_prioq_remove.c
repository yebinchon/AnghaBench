
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prioq_item {int dummy; } ;
typedef int Prioq ;


 struct prioq_item* find_item (int *,void*,unsigned int*) ;
 int remove_item (int *,struct prioq_item*) ;

int prioq_remove(Prioq *q, void *data, unsigned *idx) {
        struct prioq_item *i;

        if (!q)
                return 0;

        i = find_item(q, data, idx);
        if (!i)
                return 0;

        remove_item(q, i);
        return 1;
}
