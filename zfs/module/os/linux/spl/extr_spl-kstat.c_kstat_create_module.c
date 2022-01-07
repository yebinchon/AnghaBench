
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct proc_dir_entry {int dummy; } ;
struct TYPE_4__ {int ksm_module_list; int ksm_kstat_list; int ksm_name; struct proc_dir_entry* ksm_proc; } ;
typedef TYPE_1__ kstat_module_t ;


 int INIT_LIST_HEAD (int *) ;
 int KM_SLEEP ;
 scalar_t__ KSTAT_STRLEN ;
 TYPE_1__* kmem_alloc (int,int ) ;
 int kstat_module_list ;
 int list_add_tail (int *,int *) ;
 struct proc_dir_entry* proc_mkdir (char*,int ) ;
 int proc_spl_kstat ;
 int strlcpy (int ,char*,scalar_t__) ;

__attribute__((used)) static kstat_module_t *
kstat_create_module(char *name)
{
 kstat_module_t *module;
 struct proc_dir_entry *pde;

 pde = proc_mkdir(name, proc_spl_kstat);
 if (pde == ((void*)0))
  return (((void*)0));

 module = kmem_alloc(sizeof (kstat_module_t), KM_SLEEP);
 module->ksm_proc = pde;
 strlcpy(module->ksm_name, name, KSTAT_STRLEN+1);
 INIT_LIST_HEAD(&module->ksm_kstat_list);
 list_add_tail(&module->ksm_module_list, &kstat_module_list);

 return (module);

}
