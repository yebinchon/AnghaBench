
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HASH_SEQ_STATUS ;
typedef int ContinuousAggsCacheInvalEntry ;
typedef int Catalog ;


 int AccessShareLock ;
 int CONTINUOUS_AGGS_INVALIDATION_THRESHOLD ;
 int LockRelationOid (int ,int ) ;
 int cache_inval_entry_write (int *) ;
 int catalog_get_table_id (int *,int ) ;
 int continuous_aggs_cache_inval_htab ;
 scalar_t__ hash_get_num_entries (int ) ;
 int hash_seq_init (int *,int ) ;
 int * hash_seq_search (int *) ;
 int * ts_catalog_get () ;

__attribute__((used)) static void
cache_inval_htab_write(void)
{
 HASH_SEQ_STATUS hash_seq;
 ContinuousAggsCacheInvalEntry *current_entry;
 Catalog *catalog;

 if (hash_get_num_entries(continuous_aggs_cache_inval_htab) == 0)
  return;

 catalog = ts_catalog_get();





 LockRelationOid(catalog_get_table_id(catalog, CONTINUOUS_AGGS_INVALIDATION_THRESHOLD),
     AccessShareLock);

 hash_seq_init(&hash_seq, continuous_aggs_cache_inval_htab);
 while ((current_entry = hash_seq_search(&hash_seq)) != ((void*)0))
  cache_inval_entry_write(current_entry);
}
