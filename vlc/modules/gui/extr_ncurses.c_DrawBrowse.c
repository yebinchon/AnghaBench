
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct dir_entry_t {int path; scalar_t__ file; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int n_dir_entries; scalar_t__ color; struct dir_entry_t** dir_entries; } ;
typedef TYPE_2__ intf_sys_t ;


 int C_DEFAULT ;
 int C_FOLDER ;
 int MainBoxWrite (TYPE_2__*,int,char*,char,int ) ;
 int color_set (int ,int *) ;

__attribute__((used)) static int DrawBrowse(intf_thread_t *intf)
{
    intf_sys_t *sys = intf->p_sys;

    for (int i = 0; i < sys->n_dir_entries; i++) {
        struct dir_entry_t *dir_entry = sys->dir_entries[i];
        char type = dir_entry->file ? ' ' : '+';

        if (sys->color)
            color_set(dir_entry->file ? C_DEFAULT : C_FOLDER, ((void*)0));
        MainBoxWrite(sys, i, " %c %s", type, dir_entry->path);
    }

    return sys->n_dir_entries;
}
