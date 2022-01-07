
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ expiration; } ;


 int FlushLsCacheItem (int) ;
 TYPE_1__* gLsCache ;
 int kLsCacheSize ;

void
FlushLsCache(void)
{
 int i;

 for (i=0; i<kLsCacheSize; i++) {
  if (gLsCache[i].expiration != (time_t) 0) {
   FlushLsCacheItem(i);
  }
 }
}
