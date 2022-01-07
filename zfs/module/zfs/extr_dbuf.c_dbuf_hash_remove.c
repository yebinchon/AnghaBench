
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_7__ {int db_object; } ;
struct TYPE_8__ {scalar_t__ db_state; struct TYPE_8__* db_hash_next; int db_mtx; int db_holds; int db_blkid; int db_level; TYPE_1__ db; int db_objset; } ;
typedef TYPE_2__ dmu_buf_impl_t ;
struct TYPE_9__ {size_t hash_table_mask; TYPE_2__** hash_table; } ;
typedef TYPE_3__ dbuf_hash_table_t ;


 int ASSERT (int) ;
 int DBUF_HASH_MUTEX (TYPE_3__*,size_t) ;
 int DBUF_STAT_BUMPDOWN (int ) ;
 scalar_t__ DB_EVICTING ;
 int MUTEX_HELD (int *) ;
 int atomic_dec_64 (int *) ;
 size_t dbuf_hash (int ,int ,int ,int ) ;
 int dbuf_hash_count ;
 TYPE_3__ dbuf_hash_table ;
 int hash_chains ;
 int mutex_enter (int ) ;
 int mutex_exit (int ) ;
 int zfs_refcount_is_zero (int *) ;

__attribute__((used)) static void
dbuf_hash_remove(dmu_buf_impl_t *db)
{
 dbuf_hash_table_t *h = &dbuf_hash_table;
 uint64_t hv, idx;
 dmu_buf_impl_t *dbf, **dbp;

 hv = dbuf_hash(db->db_objset, db->db.db_object,
     db->db_level, db->db_blkid);
 idx = hv & h->hash_table_mask;





 ASSERT(zfs_refcount_is_zero(&db->db_holds));
 ASSERT(db->db_state == DB_EVICTING);
 ASSERT(!MUTEX_HELD(&db->db_mtx));

 mutex_enter(DBUF_HASH_MUTEX(h, idx));
 dbp = &h->hash_table[idx];
 while ((dbf = *dbp) != db) {
  dbp = &dbf->db_hash_next;
  ASSERT(dbf != ((void*)0));
 }
 *dbp = db->db_hash_next;
 db->db_hash_next = ((void*)0);
 if (h->hash_table[idx] &&
     h->hash_table[idx]->db_hash_next == ((void*)0))
  DBUF_STAT_BUMPDOWN(hash_chains);
 mutex_exit(DBUF_HASH_MUTEX(h, idx));
 atomic_dec_64(&dbuf_hash_count);
}
