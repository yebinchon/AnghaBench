
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* sysfs; TYPE_1__* manager; } ;
struct TYPE_8__ {int devices; } ;
typedef TYPE_2__ Device ;


 int assert (TYPE_2__*) ;
 int device_detach (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int hashmap_remove (int ,TYPE_2__*) ;

void device_free(Device *d) {
        assert(d);

        device_detach(d);

        hashmap_remove(d->manager->devices, d->sysfs);

        free(d->sysfs);
        free(d);
}
