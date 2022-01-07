
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int dn_mtx; int dn_holds; TYPE_3__* dn_handle; TYPE_4__* dn_dbuf; } ;
typedef TYPE_2__ dnode_t ;
struct TYPE_8__ {scalar_t__ zr_owner; } ;
struct TYPE_10__ {TYPE_1__ dnh_zrlock; } ;
typedef TYPE_3__ dnode_handle_t ;
struct TYPE_11__ {int db_mtx; } ;
typedef TYPE_4__ dmu_buf_impl_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 scalar_t__ curthread ;
 int dbuf_rele_and_unlock (TYPE_4__*,TYPE_3__*,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ zfs_refcount_remove (int *,void*) ;

void
dnode_rele_and_unlock(dnode_t *dn, void *tag, boolean_t evicting)
{
 uint64_t refs;

 dmu_buf_impl_t *db = dn->dn_dbuf;
 dnode_handle_t *dnh = dn->dn_handle;

 refs = zfs_refcount_remove(&dn->dn_holds, tag);
 mutex_exit(&dn->dn_mtx);
 ASSERT(refs > 0 || dnh->dnh_zrlock.zr_owner != curthread);


 if (refs == 0 && db != ((void*)0)) {
  mutex_enter(&db->db_mtx);
  dbuf_rele_and_unlock(db, dnh, evicting);
 }
}
