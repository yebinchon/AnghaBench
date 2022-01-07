
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ n_ref; } ;
typedef TYPE_1__ DynamicUser ;


 int dynamic_user_close (TYPE_1__*) ;
 TYPE_1__* dynamic_user_free (TYPE_1__*) ;
 int dynamic_user_unref (TYPE_1__*) ;

__attribute__((used)) static DynamicUser* dynamic_user_destroy(DynamicUser *d) {
        if (!d)
                return ((void*)0);






        dynamic_user_unref(d);

        if (d->n_ref > 0)
                return ((void*)0);

        (void) dynamic_user_close(d);
        return dynamic_user_free(d);
}
