
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_list {int unique_entries; } ;


 int hashmap_free (int ) ;
 struct udev_list* mfree (struct udev_list*) ;
 int udev_list_cleanup (struct udev_list*) ;

struct udev_list *udev_list_free(struct udev_list *list) {
        if (!list)
                return ((void*)0);

        udev_list_cleanup(list);
        hashmap_free(list->unique_entries);

        return mfree(list);
}
