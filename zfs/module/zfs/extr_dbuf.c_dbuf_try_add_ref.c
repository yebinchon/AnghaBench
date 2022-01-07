
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int dmu_buf_t ;
struct TYPE_5__ {scalar_t__ db_dirtycnt; int db_mtx; int db_holds; } ;
typedef TYPE_1__ dmu_buf_impl_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ DMU_BONUS_BLKID ;
 TYPE_1__* dbuf_find (int *,scalar_t__,int ,scalar_t__) ;
 TYPE_1__* dbuf_find_bonus (int *,scalar_t__) ;
 scalar_t__ dbuf_refcount (TYPE_1__*) ;
 int mutex_exit (int *) ;
 int zfs_refcount_add (int *,void*) ;

boolean_t
dbuf_try_add_ref(dmu_buf_t *db_fake, objset_t *os, uint64_t obj, uint64_t blkid,
    void *tag)
{
 dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;
 dmu_buf_impl_t *found_db;
 boolean_t result = B_FALSE;

 if (blkid == DMU_BONUS_BLKID)
  found_db = dbuf_find_bonus(os, obj);
 else
  found_db = dbuf_find(os, obj, 0, blkid);

 if (found_db != ((void*)0)) {
  if (db == found_db && dbuf_refcount(db) > db->db_dirtycnt) {
   (void) zfs_refcount_add(&db->db_holds, tag);
   result = B_TRUE;
  }
  mutex_exit(&found_db->db_mtx);
 }
 return (result);
}
