
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int db_objset; TYPE_1__* db_parent; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
typedef scalar_t__ db_lock_type_t ;
struct TYPE_7__ {int ds_bp_rwlock; } ;
struct TYPE_5__ {int db_rwlock; } ;


 scalar_t__ DLT_OBJSET ;
 scalar_t__ DLT_PARENT ;
 TYPE_3__* dmu_objset_ds (int ) ;
 int rrw_exit (int *,void*) ;
 int rw_exit (int *) ;

void
dmu_buf_unlock_parent(dmu_buf_impl_t *db, db_lock_type_t type, void *tag)
{
 if (type == DLT_PARENT)
  rw_exit(&db->db_parent->db_rwlock);
 else if (type == DLT_OBJSET)
  rrw_exit(&dmu_objset_ds(db->db_objset)->ds_bp_rwlock, tag);
}
