
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {int fil; scalar_t__ expiration; int * itempath; } ;


 int DisposeFileInfoListContents (int *) ;
 int Trace (int,char*,int *) ;
 int free (int *) ;
 TYPE_1__* gLsCache ;

__attribute__((used)) static void
FlushLsCacheItem(int i)
{
 Trace(1, "flush ls cache item: %s\n", gLsCache[i].itempath);
 if (gLsCache[i].itempath != ((void*)0))
  free(gLsCache[i].itempath);
 gLsCache[i].itempath = ((void*)0);
 gLsCache[i].expiration = (time_t) 0;
 DisposeFileInfoListContents(&gLsCache[i].fil);
}
