
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_hwdb {int properties_list; int hwdb; } ;


 int assert (struct udev_hwdb*) ;
 struct udev_hwdb* mfree (struct udev_hwdb*) ;
 int sd_hwdb_unref (int ) ;
 int udev_list_free (int ) ;

__attribute__((used)) static struct udev_hwdb *udev_hwdb_free(struct udev_hwdb *hwdb) {
        assert(hwdb);

        sd_hwdb_unref(hwdb->hwdb);
        udev_list_free(hwdb->properties_list);
        return mfree(hwdb);
}
