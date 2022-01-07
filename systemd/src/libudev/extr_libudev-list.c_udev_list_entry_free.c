
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udev_list_entry {int value; int name; TYPE_1__* list; } ;
struct TYPE_2__ {int entries; int unique_entries; scalar_t__ unique; } ;


 int LIST_REMOVE (int ,int ,struct udev_list_entry*) ;
 int entries ;
 int free (int ) ;
 int hashmap_remove (int ,int ) ;
 struct udev_list_entry* mfree (struct udev_list_entry*) ;

__attribute__((used)) static struct udev_list_entry *udev_list_entry_free(struct udev_list_entry *entry) {
        if (!entry)
                return ((void*)0);

        if (entry->list) {
                if (entry->list->unique)
                        hashmap_remove(entry->list->unique_entries, entry->name);
                else
                        LIST_REMOVE(entries, entry->list->entries, entry);
        }

        free(entry->name);
        free(entry->value);

        return mfree(entry);
}
