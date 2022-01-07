
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int sa_num_attrs; int sa_lock; } ;
typedef TYPE_2__ sa_os_t ;
struct TYPE_10__ {struct TYPE_10__* sa_idx_tab; int sa_refcount; TYPE_1__* sa_layout; struct TYPE_10__* sa_variable_lengths; } ;
typedef TYPE_3__ sa_idx_tab_t ;
struct TYPE_11__ {TYPE_2__* os_sa; } ;
typedef TYPE_4__ objset_t ;
struct TYPE_8__ {int lot_var_sizes; int lot_idx_tab; } ;


 int kmem_free (TYPE_3__*,int) ;
 int list_remove (int *,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zfs_refcount_destroy (int *) ;
 scalar_t__ zfs_refcount_remove (int *,int *) ;

__attribute__((used)) static void
sa_idx_tab_rele(objset_t *os, void *arg)
{
 sa_os_t *sa = os->os_sa;
 sa_idx_tab_t *idx_tab = arg;

 if (idx_tab == ((void*)0))
  return;

 mutex_enter(&sa->sa_lock);
 if (zfs_refcount_remove(&idx_tab->sa_refcount, ((void*)0)) == 0) {
  list_remove(&idx_tab->sa_layout->lot_idx_tab, idx_tab);
  if (idx_tab->sa_variable_lengths)
   kmem_free(idx_tab->sa_variable_lengths,
       sizeof (uint16_t) *
       idx_tab->sa_layout->lot_var_sizes);
  zfs_refcount_destroy(&idx_tab->sa_refcount);
  kmem_free(idx_tab->sa_idx_tab,
      sizeof (uint32_t) * sa->sa_num_attrs);
  kmem_free(idx_tab, sizeof (sa_idx_tab_t));
 }
 mutex_exit(&sa->sa_lock);
}
