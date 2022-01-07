
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int ) ;
 int kstat_module_list ;
 int kstat_module_lock ;
 int list_empty (int *) ;
 int mutex_destroy (int *) ;

void
spl_kstat_fini(void)
{
 ASSERT(list_empty(&kstat_module_list));
 mutex_destroy(&kstat_module_lock);
}
