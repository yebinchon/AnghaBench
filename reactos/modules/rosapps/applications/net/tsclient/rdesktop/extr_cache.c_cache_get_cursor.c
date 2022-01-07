
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint16 ;
struct TYPE_4__ {int ** cursorcache; } ;
struct TYPE_5__ {TYPE_1__ cache; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int * HCURSOR ;


 size_t NUM_ELEMENTS (int **) ;
 int error (char*,size_t) ;

HCURSOR
cache_get_cursor(RDPCLIENT * This, uint16 cache_idx)
{
 HCURSOR cursor;

 if (cache_idx < NUM_ELEMENTS(This->cache.cursorcache))
 {
  cursor = This->cache.cursorcache[cache_idx];
  if (cursor != ((void*)0))
   return cursor;
 }

 error("get cursor %d\n", cache_idx);
 return ((void*)0);
}
