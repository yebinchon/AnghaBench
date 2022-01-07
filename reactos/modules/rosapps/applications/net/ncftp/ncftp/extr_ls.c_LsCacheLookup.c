
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ expiration; int hits; int * itempath; } ;


 int FlushLsCacheItem (int) ;
 TYPE_1__* gLsCache ;
 int gOldestLsCacheItem ;
 int kLsCacheSize ;
 scalar_t__ strcmp (char const* const,int *) ;
 int time (scalar_t__*) ;

int
LsCacheLookup(const char *const itempath)
{
 int i, j;
 time_t now;

 (void) time(&now);
 for (i=0, j=gOldestLsCacheItem; i<kLsCacheSize; i++) {
  if (--j < 0)
   j = kLsCacheSize - 1;
  if ((gLsCache[j].expiration != (time_t) 0) && (gLsCache[j].itempath != ((void*)0))) {
   if (strcmp(itempath, gLsCache[j].itempath) == 0) {
    if (now > gLsCache[j].expiration) {

     FlushLsCacheItem(j);
     return (-1);
    }
    gLsCache[j].hits++;
    return (j);
   }
  }
 }
 return (-1);
}
