
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device_tree; int initrd; int efi; int kernel; int options; int architecture; int machine_id; int version; int show_title; int title; int root; int path; int id; } ;
typedef TYPE_1__ BootEntry ;


 int assert (TYPE_1__*) ;
 int free (int ) ;
 int strv_free (int ) ;

__attribute__((used)) static void boot_entry_free(BootEntry *entry) {
        assert(entry);

        free(entry->id);
        free(entry->path);
        free(entry->root);
        free(entry->title);
        free(entry->show_title);
        free(entry->version);
        free(entry->machine_id);
        free(entry->architecture);
        strv_free(entry->options);
        free(entry->kernel);
        free(entry->efi);
        strv_free(entry->initrd);
        free(entry->device_tree);
}
