
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ksm_module_list; int ksm_name; int ksm_kstat_list; } ;
typedef TYPE_1__ kstat_module_t ;


 int ASSERT (int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int proc_spl_kstat ;
 int remove_proc_entry (int ,int ) ;

__attribute__((used)) static void
kstat_delete_module(kstat_module_t *module)
{
 ASSERT(list_empty(&module->ksm_kstat_list));
 remove_proc_entry(module->ksm_name, proc_spl_kstat);
 list_del(&module->ksm_module_list);
 kmem_free(module, sizeof (kstat_module_t));
}
