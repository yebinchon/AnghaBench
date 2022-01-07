
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int dmu_object_type_t ;
typedef int dmu_buf_impl_t ;
typedef int boolean_t ;
struct TYPE_4__ {int dn_type; } ;
struct TYPE_3__ {int size; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int B_TRUE ;
 int DBUF_STAT_BUMP (int ) ;
 size_t DB_DBUF_METADATA_CACHE ;
 TYPE_2__* DB_DNODE (int *) ;
 int DB_DNODE_ENTER (int *) ;
 int DB_DNODE_EXIT (int *) ;
 int DMU_OT_IS_METADATA (int ) ;
 scalar_t__ DMU_OT_IS_METADATA_CACHED (int ) ;
 TYPE_1__* dbuf_caches ;
 scalar_t__ dbuf_metadata_cache_max_bytes ;
 int metadata_cache_overflow ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static boolean_t
dbuf_include_in_metadata_cache(dmu_buf_impl_t *db)
{
 DB_DNODE_ENTER(db);
 dmu_object_type_t type = DB_DNODE(db)->dn_type;
 DB_DNODE_EXIT(db);


 if (DMU_OT_IS_METADATA_CACHED(type)) {

  ASSERT(DMU_OT_IS_METADATA(type));





  if (zfs_refcount_count(
      &dbuf_caches[DB_DBUF_METADATA_CACHE].size) >
      dbuf_metadata_cache_max_bytes) {
   DBUF_STAT_BUMP(metadata_cache_overflow);
   return (B_FALSE);
  }

  return (B_TRUE);
 }

 return (B_FALSE);
}
