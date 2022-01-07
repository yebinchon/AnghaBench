
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sda_tx; int sda_sublist_idx; int sda_list; } ;
typedef TYPE_1__ sync_dnodes_arg_t ;
typedef int multilist_sublist_t ;


 int dmu_objset_sync_dnodes (int *,int ) ;
 int kmem_free (TYPE_1__*,int) ;
 int * multilist_sublist_lock (int ,int ) ;
 int multilist_sublist_unlock (int *) ;

__attribute__((used)) static void
sync_dnodes_task(void *arg)
{
 sync_dnodes_arg_t *sda = arg;

 multilist_sublist_t *ms =
     multilist_sublist_lock(sda->sda_list, sda->sda_sublist_idx);

 dmu_objset_sync_dnodes(ms, sda->sda_tx);

 multilist_sublist_unlock(ms);

 kmem_free(sda, sizeof (*sda));
}
