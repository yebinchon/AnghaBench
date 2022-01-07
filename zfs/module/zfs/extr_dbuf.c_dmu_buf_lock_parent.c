
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krw_t ;
typedef enum db_lock_type { ____Placeholder_db_lock_type } db_lock_type ;
struct TYPE_6__ {int db_objset; TYPE_1__* db_parent; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
typedef int db_lock_type_t ;
struct TYPE_7__ {int ds_bp_rwlock; } ;
struct TYPE_5__ {int db_rwlock; } ;


 int DLT_NONE ;
 int DLT_OBJSET ;
 int DLT_PARENT ;
 TYPE_3__* dmu_objset_ds (int ) ;
 int rrw_enter (int *,int ,void*) ;
 int rw_enter (int *,int ) ;

db_lock_type_t
dmu_buf_lock_parent(dmu_buf_impl_t *db, krw_t rw, void *tag)
{
 enum db_lock_type ret = DLT_NONE;
 if (db->db_parent != ((void*)0)) {
  rw_enter(&db->db_parent->db_rwlock, rw);
  ret = DLT_PARENT;
 } else if (dmu_objset_ds(db->db_objset) != ((void*)0)) {
  rrw_enter(&dmu_objset_ds(db->db_objset)->ds_bp_rwlock, rw,
      tag);
  ret = DLT_OBJSET;
 }




 return (ret);
}
