
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slot_count; TYPE_2__* storage; int slot_count_log2; int seed; } ;
typedef TYPE_1__ stbds_hash_index ;
struct TYPE_5__ {size_t* hash; int * index; } ;
typedef TYPE_2__ stbds_hash_bucket ;
typedef size_t ptrdiff_t ;


 size_t STBDS_BUCKET_LENGTH ;
 size_t STBDS_BUCKET_MASK ;
 size_t STBDS_BUCKET_SHIFT ;
 size_t STBDS_HASH_EMPTY ;
 void* STBDS_HASH_TO_ARR (void*,size_t) ;
 int STBDS_HM_STRING ;
 int STBDS_STATS (int ) ;
 size_t stbds_hash_bytes (void*,size_t,int ) ;
 int stbds_hash_probes ;
 size_t stbds_hash_string (char*,int ) ;
 TYPE_1__* stbds_hash_table (void*) ;
 scalar_t__ stbds_is_key_equal (void*,size_t,void*,size_t,int,int ) ;
 size_t stbds_probe_position (size_t,int,int ) ;

__attribute__((used)) static ptrdiff_t stbds_hm_find_slot(void *a, size_t elemsize, void *key, size_t keysize, int mode)
{
  void *raw_a = STBDS_HASH_TO_ARR(a,elemsize);
  stbds_hash_index *table = stbds_hash_table(raw_a);
  size_t hash = mode >= STBDS_HM_STRING ? stbds_hash_string((char*)key,table->seed) : stbds_hash_bytes(key, keysize,table->seed);
  size_t step = STBDS_BUCKET_LENGTH;
  size_t limit,i;
  size_t pos;
  stbds_hash_bucket *bucket;

  if (hash < 2) hash += 2;

  pos = stbds_probe_position(hash, table->slot_count, table->slot_count_log2);

  for (;;) {
    STBDS_STATS(++stbds_hash_probes);
    bucket = &table->storage[pos >> STBDS_BUCKET_SHIFT];


    for (i=pos & STBDS_BUCKET_MASK; i < STBDS_BUCKET_LENGTH; ++i) {
      if (bucket->hash[i] == hash) {
        if (stbds_is_key_equal(a, elemsize, key, keysize, mode, bucket->index[i])) {
          return (pos & ~STBDS_BUCKET_MASK)+i;
        }
      } else if (bucket->hash[i] == STBDS_HASH_EMPTY) {
        return -1;
      }
    }


    limit = pos & STBDS_BUCKET_MASK;
    for (i = 0; i < limit; ++i) {
      if (bucket->hash[i] == hash) {
        if (stbds_is_key_equal(a, elemsize, key, keysize, mode, bucket->index[i])) {
          return (pos & ~STBDS_BUCKET_MASK)+i;
        }
      } else if (bucket->hash[i] == STBDS_HASH_EMPTY) {
        return -1;
      }
    }


    pos += step;
    step += STBDS_BUCKET_LENGTH;
    pos &= (table->slot_count-1);
  }

  return -1;
}
