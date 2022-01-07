
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ dl_object; int * dl_os; int * dl_phys; int * dl_dbuf; int dl_cache; scalar_t__ dl_havecache; int dl_tree; scalar_t__ dl_havetree; int dl_bpobj; scalar_t__ dl_oldfmt; int dl_lock; } ;
typedef TYPE_1__ dsl_deadlist_t ;
struct TYPE_10__ {int dle_bpobj; } ;
typedef TYPE_2__ dsl_deadlist_entry_t ;
typedef TYPE_2__ dsl_deadlist_cache_entry_t ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 int avl_destroy (int *) ;
 TYPE_2__* avl_destroy_nodes (int *,void**) ;
 int bpobj_close (int *) ;
 int dmu_buf_rele (int *,TYPE_1__*) ;
 int dsl_deadlist_is_open (TYPE_1__*) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;

void
dsl_deadlist_close(dsl_deadlist_t *dl)
{
 ASSERT(dsl_deadlist_is_open(dl));
 mutex_destroy(&dl->dl_lock);

 if (dl->dl_oldfmt) {
  dl->dl_oldfmt = B_FALSE;
  bpobj_close(&dl->dl_bpobj);
  dl->dl_os = ((void*)0);
  dl->dl_object = 0;
  return;
 }

 if (dl->dl_havetree) {
  dsl_deadlist_entry_t *dle;
  void *cookie = ((void*)0);
  while ((dle = avl_destroy_nodes(&dl->dl_tree, &cookie))
      != ((void*)0)) {
   bpobj_close(&dle->dle_bpobj);
   kmem_free(dle, sizeof (*dle));
  }
  avl_destroy(&dl->dl_tree);
 }
 if (dl->dl_havecache) {
  dsl_deadlist_cache_entry_t *dlce;
  void *cookie = ((void*)0);
  while ((dlce = avl_destroy_nodes(&dl->dl_cache, &cookie))
      != ((void*)0)) {
   kmem_free(dlce, sizeof (*dlce));
  }
  avl_destroy(&dl->dl_cache);
 }
 dmu_buf_rele(dl->dl_dbuf, dl);
 dl->dl_dbuf = ((void*)0);
 dl->dl_phys = ((void*)0);
 dl->dl_os = ((void*)0);
 dl->dl_object = 0;
}
