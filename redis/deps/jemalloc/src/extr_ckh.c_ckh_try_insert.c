
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lg_curbuckets; int (* hash ) (void const*,size_t*) ;} ;
typedef TYPE_1__ ckh_t ;


 int ZU (int) ;
 int ckh_evict_reloc_insert (TYPE_1__*,size_t,void const**,void const**) ;
 int ckh_try_bucket_insert (TYPE_1__*,size_t,void const*,void const*) ;
 int stub1 (void const*,size_t*) ;

__attribute__((used)) static bool
ckh_try_insert(ckh_t *ckh, void const**argkey, void const**argdata) {
 size_t hashes[2], bucket;
 const void *key = *argkey;
 const void *data = *argdata;

 ckh->hash(key, hashes);


 bucket = hashes[0] & ((ZU(1) << ckh->lg_curbuckets) - 1);
 if (!ckh_try_bucket_insert(ckh, bucket, key, data)) {
  return 0;
 }


 bucket = hashes[1] & ((ZU(1) << ckh->lg_curbuckets) - 1);
 if (!ckh_try_bucket_insert(ckh, bucket, key, data)) {
  return 0;
 }




 return ckh_evict_reloc_insert(ckh, bucket, argkey, argdata);
}
