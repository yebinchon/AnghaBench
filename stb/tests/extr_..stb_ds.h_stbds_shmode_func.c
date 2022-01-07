
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; } ;
struct TYPE_5__ {TYPE_1__ string; } ;
typedef TYPE_2__ stbds_hash_index ;
struct TYPE_6__ {int length; TYPE_2__* hash_table; } ;


 void* STBDS_ARR_TO_HASH (void*,size_t) ;
 int STBDS_BUCKET_LENGTH ;
 int memset (void*,int ,size_t) ;
 void* stbds_arrgrowf (int ,size_t,int ,int) ;
 TYPE_3__* stbds_header (void*) ;
 scalar_t__ stbds_make_hash_index (int ,int *) ;

void * stbds_shmode_func(size_t elemsize, int mode)
{
  void *a = stbds_arrgrowf(0, elemsize, 0, 1);
  stbds_hash_index *h;
  memset(a, 0, elemsize);
  stbds_header(a)->length = 1;
  stbds_header(a)->hash_table = h = (stbds_hash_index *) stbds_make_hash_index(STBDS_BUCKET_LENGTH, ((void*)0));
  h->string.mode = mode;
  return STBDS_ARR_TO_HASH(a,elemsize);
}
