
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* key; void* data; } ;
typedef TYPE_1__ ckhc_t ;
struct TYPE_6__ {int lg_curbuckets; int (* hash ) (void const*,size_t*) ;int nrelocs; TYPE_1__* tab; int prng_state; } ;
typedef TYPE_2__ ckh_t ;


 size_t LG_CKH_BUCKET_CELLS ;
 int ZU (int) ;
 int assert (int ) ;
 int ckh_try_bucket_insert (TYPE_2__*,size_t,void const*,void const*) ;
 scalar_t__ prng_lg_range_u64 (int *,size_t) ;
 int stub1 (void const*,size_t*) ;

__attribute__((used)) static bool
ckh_evict_reloc_insert(ckh_t *ckh, size_t argbucket, void const **argkey,
    void const **argdata) {
 const void *key, *data, *tkey, *tdata;
 ckhc_t *cell;
 size_t hashes[2], bucket, tbucket;
 unsigned i;

 bucket = argbucket;
 key = *argkey;
 data = *argdata;
 while (1) {
  i = (unsigned)prng_lg_range_u64(&ckh->prng_state,
      LG_CKH_BUCKET_CELLS);
  cell = &ckh->tab[(bucket << LG_CKH_BUCKET_CELLS) + i];
  assert(cell->key != ((void*)0));


  tkey = cell->key; tdata = cell->data;
  cell->key = key; cell->data = data;
  key = tkey; data = tdata;






  ckh->hash(key, hashes);
  tbucket = hashes[1] & ((ZU(1) << ckh->lg_curbuckets) - 1);
  if (tbucket == bucket) {
   tbucket = hashes[0] & ((ZU(1) << ckh->lg_curbuckets)
       - 1);
  }

  if (tbucket == argbucket) {
   *argkey = key;
   *argdata = data;
   return 1;
  }

  bucket = tbucket;
  if (!ckh_try_bucket_insert(ckh, bucket, key, data)) {
   return 0;
  }
 }
}
