
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udev_list_entry {int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int udev_list_entry_compare_func(struct udev_list_entry * const *a, struct udev_list_entry * const *b) {
        return strcmp((*a)->name, (*b)->name);
}
