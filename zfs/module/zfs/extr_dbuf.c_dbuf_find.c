
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint64_t ;
typedef int objset_t ;
struct TYPE_7__ {scalar_t__ db_state; int db_mtx; struct TYPE_7__* db_hash_next; } ;
typedef TYPE_1__ dmu_buf_impl_t ;
struct TYPE_8__ {size_t hash_table_mask; TYPE_1__** hash_table; } ;
typedef TYPE_2__ dbuf_hash_table_t ;


 scalar_t__ DBUF_EQUAL (TYPE_1__*,int *,size_t,int ,size_t) ;
 int * DBUF_HASH_MUTEX (TYPE_2__*,size_t) ;
 scalar_t__ DB_EVICTING ;
 size_t dbuf_hash (int *,size_t,int ,size_t) ;
 TYPE_2__ dbuf_hash_table ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

dmu_buf_impl_t *
dbuf_find(objset_t *os, uint64_t obj, uint8_t level, uint64_t blkid)
{
 dbuf_hash_table_t *h = &dbuf_hash_table;
 uint64_t hv;
 uint64_t idx;
 dmu_buf_impl_t *db;

 hv = dbuf_hash(os, obj, level, blkid);
 idx = hv & h->hash_table_mask;

 mutex_enter(DBUF_HASH_MUTEX(h, idx));
 for (db = h->hash_table[idx]; db != ((void*)0); db = db->db_hash_next) {
  if (DBUF_EQUAL(db, os, obj, level, blkid)) {
   mutex_enter(&db->db_mtx);
   if (db->db_state != DB_EVICTING) {
    mutex_exit(DBUF_HASH_MUTEX(h, idx));
    return (db);
   }
   mutex_exit(&db->db_mtx);
  }
 }
 mutex_exit(DBUF_HASH_MUTEX(h, idx));
 return (((void*)0));
}
