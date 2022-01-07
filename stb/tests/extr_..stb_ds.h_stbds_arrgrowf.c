
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int stbds_array_header ;
struct TYPE_3__ {size_t capacity; scalar_t__ hash_table; scalar_t__ length; } ;


 void* STBDS_REALLOC (int *,TYPE_1__*,size_t) ;
 int STBDS_STATS (int ) ;
 int stbds_array_grow ;
 int stbds_arrcap (void*) ;
 size_t stbds_arrlen (void*) ;
 TYPE_1__* stbds_header (void*) ;

void *stbds_arrgrowf(void *a, size_t elemsize, size_t addlen, size_t min_cap)
{
  void *b;
  size_t min_len = stbds_arrlen(a) + addlen;


  if (min_len > min_cap)
    min_cap = min_len;

  if (min_cap <= stbds_arrcap(a))
    return a;


  if (min_cap < 2 * stbds_arrcap(a))
    min_cap = 2 * stbds_arrcap(a);
  else if (min_cap < 4)
    min_cap = 4;

  b = STBDS_REALLOC(((void*)0), (a) ? stbds_header(a) : 0, elemsize * min_cap + sizeof(stbds_array_header));
  b = (char *) b + sizeof(stbds_array_header);
  if (a == ((void*)0)) {
    stbds_header(b)->length = 0;
    stbds_header(b)->hash_table = 0;
  } else {
    STBDS_STATS(++stbds_array_grow);
  }
  stbds_header(b)->capacity = min_cap;
  return b;
}
