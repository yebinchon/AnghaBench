
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ kpe_proc; int kpe_list; int kpe_name; TYPE_2__* kpe_owner; } ;
typedef TYPE_1__ kstat_proc_entry_t ;
struct TYPE_6__ {int ksm_kstat_list; int ksm_proc; } ;
typedef TYPE_2__ kstat_module_t ;


 int kstat_delete_module (TYPE_2__*) ;
 int kstat_module_lock ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int remove_proc_entry (int ,int ) ;

void
kstat_proc_entry_delete(kstat_proc_entry_t *kpep)
{
 kstat_module_t *module = kpep->kpe_owner;
 if (kpep->kpe_proc)
  remove_proc_entry(kpep->kpe_name, module->ksm_proc);

 mutex_enter(&kstat_module_lock);
 list_del_init(&kpep->kpe_list);





 if (kpep->kpe_proc && list_empty(&module->ksm_kstat_list))
  kstat_delete_module(module);
 mutex_exit(&kstat_module_lock);

}
