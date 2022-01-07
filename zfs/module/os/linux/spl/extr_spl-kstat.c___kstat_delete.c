
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ks_flags; int ks_data_size; int ks_private_lock; int * ks_lock; struct TYPE_4__* ks_data; int ks_proc; } ;
typedef TYPE_1__ kstat_t ;


 int KSTAT_FLAG_VIRTUAL ;
 int kmem_free (TYPE_1__*,int) ;
 int kstat_proc_entry_delete (int *) ;
 int mutex_destroy (int *) ;

void
__kstat_delete(kstat_t *ksp)
{
 kstat_proc_entry_delete(&ksp->ks_proc);

 if (!(ksp->ks_flags & KSTAT_FLAG_VIRTUAL))
  kmem_free(ksp->ks_data, ksp->ks_data_size);

 ksp->ks_lock = ((void*)0);
 mutex_destroy(&ksp->ks_private_lock);
 kmem_free(ksp, sizeof (*ksp));
}
