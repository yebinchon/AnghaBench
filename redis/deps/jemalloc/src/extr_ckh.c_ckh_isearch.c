
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lg_curbuckets; int (* hash ) (void const*,size_t*) ;} ;
typedef TYPE_1__ ckh_t ;


 size_t SIZE_T_MAX ;
 int ZU (int) ;
 int assert (int ) ;
 size_t ckh_bucket_search (TYPE_1__*,size_t,void const*) ;
 int stub1 (void const*,size_t*) ;

__attribute__((used)) static size_t
ckh_isearch(ckh_t *ckh, const void *key) {
 size_t hashes[2], bucket, cell;

 assert(ckh != ((void*)0));

 ckh->hash(key, hashes);


 bucket = hashes[0] & ((ZU(1) << ckh->lg_curbuckets) - 1);
 cell = ckh_bucket_search(ckh, bucket, key);
 if (cell != SIZE_T_MAX) {
  return cell;
 }


 bucket = hashes[1] & ((ZU(1) << ckh->lg_curbuckets) - 1);
 cell = ckh_bucket_search(ckh, bucket, key);
 return cell;
}
