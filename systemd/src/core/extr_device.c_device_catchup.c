
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int Unit ;
struct TYPE_5__ {scalar_t__ enumerated_found; scalar_t__ found; } ;
typedef TYPE_1__ Device ;


 TYPE_1__* DEVICE (int *) ;
 int DEVICE_FOUND_MASK ;
 int assert (TYPE_1__*) ;
 int device_update_found_one (TYPE_1__*,scalar_t__,int ) ;

__attribute__((used)) static void device_catchup(Unit *u) {
        Device *d = DEVICE(u);

        assert(d);


        if (d->enumerated_found == d->found)
                return;

        device_update_found_one(d, d->enumerated_found, DEVICE_FOUND_MASK);
}
