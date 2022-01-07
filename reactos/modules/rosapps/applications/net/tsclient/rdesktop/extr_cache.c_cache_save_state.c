
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32 ;
struct TYPE_8__ {int next; } ;
struct TYPE_6__ {int* bmpcache_lru; TYPE_5__** bmpcache; } ;
struct TYPE_7__ {TYPE_1__ cache; } ;
typedef TYPE_2__ RDPCLIENT ;


 int DEBUG_RDP5 (char*) ;
 scalar_t__ IS_PERSISTENT (size_t) ;
 size_t NUM_ELEMENTS (TYPE_5__**) ;
 int pstcache_touch_bitmap (TYPE_2__*,size_t,int,size_t) ;

void
cache_save_state(RDPCLIENT * This)
{
 uint32 id = 0, t = 0;
 int idx;

 for (id = 0; id < NUM_ELEMENTS(This->cache.bmpcache); id++)
  if (IS_PERSISTENT(id))
  {
   DEBUG_RDP5(("Saving cache state for bitmap cache %d...", id));
   idx = This->cache.bmpcache_lru[id];
   while (idx >= 0)
   {
    pstcache_touch_bitmap(This, id, idx, ++t);
    idx = This->cache.bmpcache[id][idx].next;
   }
   DEBUG_RDP5((" %d stamps written.\n", t));
  }
}
