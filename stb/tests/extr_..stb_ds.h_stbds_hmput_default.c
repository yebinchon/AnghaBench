
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;


 void* STBDS_ARR_TO_HASH (void*,size_t) ;
 void* STBDS_HASH_TO_ARR (void*,size_t) ;
 int memset (void*,int ,size_t) ;
 void* stbds_arrgrowf (void*,size_t,int ,int) ;
 TYPE_1__* stbds_header (void*) ;

void * stbds_hmput_default(void *a, size_t elemsize)
{




  if (a == ((void*)0) || stbds_header(STBDS_HASH_TO_ARR(a,elemsize))->length == 0) {
    a = stbds_arrgrowf(a ? STBDS_HASH_TO_ARR(a,elemsize) : ((void*)0), elemsize, 0, 1);
    stbds_header(a)->length += 1;
    memset(a, 0, elemsize);
    a=STBDS_ARR_TO_HASH(a,elemsize);
  }
  return a;
}
