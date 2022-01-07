
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_enumerate {int enumerator; int devices_list; } ;


 int assert (struct udev_enumerate*) ;
 struct udev_enumerate* mfree (struct udev_enumerate*) ;
 int sd_device_enumerator_unref (int ) ;
 int udev_list_free (int ) ;

__attribute__((used)) static struct udev_enumerate *udev_enumerate_free(struct udev_enumerate *udev_enumerate) {
        assert(udev_enumerate);

        udev_list_free(udev_enumerate->devices_list);
        sd_device_enumerator_unref(udev_enumerate->enumerator);
        return mfree(udev_enumerate);
}
