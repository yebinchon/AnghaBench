
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint16 ;
struct TYPE_5__ {int ** cursorcache; } ;
struct TYPE_6__ {TYPE_1__ cache; } ;
typedef TYPE_2__ RDPCLIENT ;
typedef int * HCURSOR ;


 size_t NUM_ELEMENTS (int **) ;
 int error (char*,size_t) ;
 int ui_destroy_cursor (TYPE_2__*,int *) ;

void
cache_put_cursor(RDPCLIENT * This, uint16 cache_idx, HCURSOR cursor)
{
 HCURSOR old;

 if (cache_idx < NUM_ELEMENTS(This->cache.cursorcache))
 {
  old = This->cache.cursorcache[cache_idx];
  if (old != ((void*)0))
   ui_destroy_cursor(This, old);

  This->cache.cursorcache[cache_idx] = cursor;
 }
 else
 {
  error("put cursor %d\n", cache_idx);
 }
}
