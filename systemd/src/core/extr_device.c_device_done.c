
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {int wants_property; } ;
typedef TYPE_1__ Device ;


 TYPE_1__* DEVICE (int *) ;
 int assert (TYPE_1__*) ;
 int device_unset_sysfs (TYPE_1__*) ;
 int strv_free (int ) ;

__attribute__((used)) static void device_done(Unit *u) {
        Device *d = DEVICE(u);

        assert(d);

        device_unset_sysfs(d);
        d->wants_property = strv_free(d->wants_property);
}
