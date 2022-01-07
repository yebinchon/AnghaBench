
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint8 ;
typedef size_t uint16 ;
struct TYPE_8__ {size_t* bmpcache_lru; TYPE_1__** bmpcache; int * bmpcache_count; } ;
struct TYPE_9__ {TYPE_2__ cache; } ;
struct TYPE_7__ {int next; int previous; scalar_t__ bitmap; } ;
typedef TYPE_3__ RDPCLIENT ;


 int DEBUG_RDP5 (char*) ;
 int IS_PERSISTENT (size_t) ;
 int NOT_SET ;
 int pstcache_touch_bitmap (TYPE_3__*,size_t,size_t,int ) ;
 int ui_destroy_bitmap (TYPE_3__*,scalar_t__) ;

void
cache_evict_bitmap(RDPCLIENT * This, uint8 id)
{
 uint16 idx;
 int n_idx;

 if (!IS_PERSISTENT(id))
  return;

 idx = This->cache.bmpcache_lru[id];
 n_idx = This->cache.bmpcache[id][idx].next;
 DEBUG_RDP5(("evict bitmap: id=%d idx=%d n_idx=%d bmp=0x%x\n", id, idx, n_idx,
      This->cache.bmpcache[id][idx].bitmap));

 ui_destroy_bitmap(This, This->cache.bmpcache[id][idx].bitmap);
 --This->cache.bmpcache_count[id];
 This->cache.bmpcache[id][idx].bitmap = 0;

 This->cache.bmpcache_lru[id] = n_idx;
 This->cache.bmpcache[id][n_idx].previous = NOT_SET;

 pstcache_touch_bitmap(This, id, idx, 0);
}
