
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* manager; } ;
struct TYPE_12__ {scalar_t__ sysfs; } ;
struct TYPE_11__ {int * devices_by_sysfs; } ;
typedef int Hashmap ;
typedef TYPE_2__ Device ;


 int LIST_REMOVE (int ,TYPE_2__*,TYPE_2__*) ;
 TYPE_7__* UNIT (TYPE_2__*) ;
 int assert (TYPE_2__*) ;
 TYPE_2__* hashmap_get (int *,scalar_t__) ;
 int hashmap_remove (int *,scalar_t__) ;
 int hashmap_remove_and_replace (int *,scalar_t__,scalar_t__,TYPE_2__*) ;
 scalar_t__ mfree (scalar_t__) ;
 int same_sysfs ;

__attribute__((used)) static void device_unset_sysfs(Device *d) {
        Hashmap *devices;
        Device *first;

        assert(d);

        if (!d->sysfs)
                return;



        devices = UNIT(d)->manager->devices_by_sysfs;
        first = hashmap_get(devices, d->sysfs);
        LIST_REMOVE(same_sysfs, first, d);

        if (first)
                hashmap_remove_and_replace(devices, d->sysfs, first->sysfs, first);
        else
                hashmap_remove(devices, d->sysfs);

        d->sysfs = mfree(d->sysfs);
}
