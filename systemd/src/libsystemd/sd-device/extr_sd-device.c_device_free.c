
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int devlinks; int tags; int sysattrs; int sysattr_values; int properties_db; int properties; int properties_nulstr; int properties_strv; int id_filename; int driver; int driver_subsystem; int subsystem; int devname; int devtype; int sysname; int syspath; int parent; } ;
typedef TYPE_1__ sd_device ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 int hashmap_free_free_free (int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int ordered_hashmap_free_free_free (int ) ;
 int sd_device_unref (int ) ;
 int set_free_free (int ) ;

__attribute__((used)) static sd_device *device_free(sd_device *device) {
        assert(device);

        sd_device_unref(device->parent);
        free(device->syspath);
        free(device->sysname);
        free(device->devtype);
        free(device->devname);
        free(device->subsystem);
        free(device->driver_subsystem);
        free(device->driver);
        free(device->id_filename);
        free(device->properties_strv);
        free(device->properties_nulstr);

        ordered_hashmap_free_free_free(device->properties);
        ordered_hashmap_free_free_free(device->properties_db);
        hashmap_free_free_free(device->sysattr_values);
        set_free_free(device->sysattrs);
        set_free_free(device->tags);
        set_free_free(device->devlinks);

        return mfree(device);
}
