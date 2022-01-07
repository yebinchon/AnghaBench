
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pl_kstat_entry; } ;
typedef TYPE_1__ procfs_list_t ;


 int kstat_proc_entry_delete (int *) ;

void
procfs_list_uninstall(procfs_list_t *procfs_list)
{
 kstat_proc_entry_delete(&procfs_list->pl_kstat_entry);
}
