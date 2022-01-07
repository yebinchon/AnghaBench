
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ n_ref; } ;
typedef TYPE_1__ DynamicUser ;


 int assert (int) ;

__attribute__((used)) static DynamicUser* dynamic_user_unref(DynamicUser *d) {
        if (!d)
                return ((void*)0);





        assert(d->n_ref > 0);
        d->n_ref--;

        return ((void*)0);
}
