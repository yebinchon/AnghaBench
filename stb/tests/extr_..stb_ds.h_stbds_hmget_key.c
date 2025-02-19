
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int stbds_temp ;
struct TYPE_4__ {TYPE_2__* storage; } ;
typedef TYPE_1__ stbds_hash_index ;
struct TYPE_5__ {int* index; } ;
typedef TYPE_2__ stbds_hash_bucket ;
typedef size_t ptrdiff_t ;
struct TYPE_6__ {int length; scalar_t__ hash_table; } ;


 void* STBDS_ARR_TO_HASH (int,size_t) ;
 size_t STBDS_BUCKET_MASK ;
 size_t STBDS_BUCKET_SHIFT ;
 void* STBDS_HASH_TO_ARR (void*,size_t) ;
 int STBDS_INDEX_EMPTY ;
 int memset (void*,int ,size_t) ;
 void* stbds_arrgrowf (int ,size_t,int ,int) ;
 TYPE_3__* stbds_header (void*) ;
 size_t stbds_hm_find_slot (void*,size_t,void*,size_t,int) ;

void * stbds_hmget_key(void *a, size_t elemsize, void *key, size_t keysize, int mode)
{
  if (a == ((void*)0)) {

    a = stbds_arrgrowf(0, elemsize, 0, 1);
    stbds_header(a)->length += 1;
    memset(a, 0, elemsize);
    stbds_temp(a) = STBDS_INDEX_EMPTY;

    return STBDS_ARR_TO_HASH(a,elemsize);
  } else {
    stbds_hash_index *table;
    void *raw_a = STBDS_HASH_TO_ARR(a,elemsize);

    table = (stbds_hash_index *) stbds_header(raw_a)->hash_table;
    if (table == 0) {
      stbds_temp(raw_a) = -1;
    } else {
      ptrdiff_t slot = stbds_hm_find_slot(a, elemsize, key, keysize, mode);
      if (slot < 0) {
        stbds_temp(raw_a) = STBDS_INDEX_EMPTY;
      } else {
        stbds_hash_bucket *b = &table->storage[slot >> STBDS_BUCKET_SHIFT];
        stbds_temp(raw_a) = b->index[slot & STBDS_BUCKET_MASK];
      }
    }
    return a;
  }
}
