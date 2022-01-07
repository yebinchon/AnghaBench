
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int os_lock; int os_evicting_node; int os_dnodes; } ;
typedef TYPE_2__ objset_t ;
struct TYPE_12__ {int dn_id_flags; int dn_zfetch; void* dn_newprojid; scalar_t__ dn_newgid; scalar_t__ dn_newuid; void* dn_oldprojid; scalar_t__ dn_oldgid; scalar_t__ dn_olduid; scalar_t__ dn_oldflags; scalar_t__ dn_oldused; void* dn_have_spill; int * dn_zio; TYPE_8__* dn_bonus; int * dn_dirtyctx_firstset; scalar_t__ dn_dirtyctx; scalar_t__ dn_dirty_txg; scalar_t__ dn_assigned_txg; scalar_t__ dn_free_txg; scalar_t__ dn_allocated_txg; TYPE_1__* dn_handle; int dn_object; TYPE_2__* dn_objset; } ;
typedef TYPE_3__ dnode_t ;
typedef int boolean_t ;
struct TYPE_13__ {int db_mtx; } ;
struct TYPE_10__ {int dnh_zrlock; } ;


 int ARC_SPACE_DNODE ;
 int ASSERT (int) ;
 void* B_FALSE ;
 int DMU_OBJECT_IS_SPECIAL (int ) ;
 int DN_ID_NEW_EXIST ;
 int POINTER_INVALIDATE (TYPE_2__**) ;
 void* ZFS_DEFAULT_PROJID ;
 int arc_space_return (int,int ) ;
 int dbuf_destroy (TYPE_8__*) ;
 int dmu_objset_evict_done (TYPE_2__*) ;
 int dmu_zfetch_fini (int *) ;
 int dnode_cache ;
 int kmem_cache_free (int ,TYPE_3__*) ;
 int kmem_free (int *,int) ;
 scalar_t__ list_is_empty (int *) ;
 scalar_t__ list_link_active (int *) ;
 int list_remove (int *,TYPE_3__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int zrl_is_locked (int *) ;
 int zrl_remove (int *) ;

__attribute__((used)) static void
dnode_destroy(dnode_t *dn)
{
 objset_t *os = dn->dn_objset;
 boolean_t complete_os_eviction = B_FALSE;

 ASSERT((dn->dn_id_flags & DN_ID_NEW_EXIST) == 0);

 mutex_enter(&os->os_lock);
 POINTER_INVALIDATE(&dn->dn_objset);
 if (!DMU_OBJECT_IS_SPECIAL(dn->dn_object)) {
  list_remove(&os->os_dnodes, dn);
  complete_os_eviction =
      list_is_empty(&os->os_dnodes) &&
      list_link_active(&os->os_evicting_node);
 }
 mutex_exit(&os->os_lock);


 if (!zrl_is_locked(&dn->dn_handle->dnh_zrlock))
  zrl_remove(&dn->dn_handle->dnh_zrlock);

 dn->dn_allocated_txg = 0;
 dn->dn_free_txg = 0;
 dn->dn_assigned_txg = 0;
 dn->dn_dirty_txg = 0;

 dn->dn_dirtyctx = 0;
 if (dn->dn_dirtyctx_firstset != ((void*)0)) {
  kmem_free(dn->dn_dirtyctx_firstset, 1);
  dn->dn_dirtyctx_firstset = ((void*)0);
 }
 if (dn->dn_bonus != ((void*)0)) {
  mutex_enter(&dn->dn_bonus->db_mtx);
  dbuf_destroy(dn->dn_bonus);
  dn->dn_bonus = ((void*)0);
 }
 dn->dn_zio = ((void*)0);

 dn->dn_have_spill = B_FALSE;
 dn->dn_oldused = 0;
 dn->dn_oldflags = 0;
 dn->dn_olduid = 0;
 dn->dn_oldgid = 0;
 dn->dn_oldprojid = ZFS_DEFAULT_PROJID;
 dn->dn_newuid = 0;
 dn->dn_newgid = 0;
 dn->dn_newprojid = ZFS_DEFAULT_PROJID;
 dn->dn_id_flags = 0;

 dmu_zfetch_fini(&dn->dn_zfetch);
 kmem_cache_free(dnode_cache, dn);
 arc_space_return(sizeof (dnode_t), ARC_SPACE_DNODE);

 if (complete_os_eviction)
  dmu_objset_evict_done(os);
}
