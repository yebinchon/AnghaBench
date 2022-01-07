
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* itempath; scalar_t__ hits; int expiration; int fil; } ;
struct TYPE_5__ {scalar_t__ nFileInfos; } ;
typedef TYPE_1__* FileInfoListPtr ;
typedef int FileInfoList ;


 int FlushLsCacheItem (int) ;
 int LsCacheLookup (char const* const) ;
 char* StrDup (char const* const) ;
 int Trace (int,char*,char const* const) ;
 TYPE_3__* gLsCache ;
 scalar_t__ gLsCacheItemLifetime ;
 int gOldestLsCacheItem ;
 int kLsCacheSize ;
 int memcpy (int *,TYPE_1__*,int) ;
 int time (int *) ;

__attribute__((used)) static void
LsCacheAdd(const char *const itempath, FileInfoListPtr files)
{
 char *cp;
 int j;


 if (files->nFileInfos == 0)
  return;

 j = LsCacheLookup(itempath);
 if (j >= 0) {




  FlushLsCacheItem(j);
 }

 cp = StrDup(itempath);
 if (cp == ((void*)0))
  return;

 j = gOldestLsCacheItem;
 (void) memcpy(&gLsCache[j].fil, files, sizeof(FileInfoList));
 (void) time(&gLsCache[j].expiration);
 gLsCache[j].expiration += gLsCacheItemLifetime;
 gLsCache[j].hits = 0;
 gLsCache[j].itempath = cp;
 Trace(1, "ls cache add: %s\n", itempath);




 gOldestLsCacheItem++;
 if (gOldestLsCacheItem >= kLsCacheSize)
  gOldestLsCacheItem = 0;
}
