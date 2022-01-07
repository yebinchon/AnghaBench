
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dn_struct_rwlock; TYPE_3__* dn_bonus; } ;
typedef TYPE_1__ dnode_t ;
struct TYPE_5__ {int db_pending_evict; int db_mtx; int db_holds; } ;


 int RW_WRITER ;
 int TRUE ;
 int dbuf_destroy (TYPE_3__*) ;
 int mutex_enter (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ zfs_refcount_is_zero (int *) ;

void
dnode_evict_bonus(dnode_t *dn)
{
 rw_enter(&dn->dn_struct_rwlock, RW_WRITER);
 if (dn->dn_bonus != ((void*)0)) {
  if (zfs_refcount_is_zero(&dn->dn_bonus->db_holds)) {
   mutex_enter(&dn->dn_bonus->db_mtx);
   dbuf_destroy(dn->dn_bonus);
   dn->dn_bonus = ((void*)0);
  } else {
   dn->dn_bonus->db_pending_evict = TRUE;
  }
 }
 rw_exit(&dn->dn_struct_rwlock);
}
