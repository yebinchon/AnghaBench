
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fil; } ;
typedef int * FileInfoListPtr ;


 int Ls (char const* const,char,char*,int *) ;
 int LsCacheLookup (char const* const) ;
 int SortFileInfoList (int *,int,int) ;
 TYPE_1__* gLsCache ;

__attribute__((used)) static FileInfoListPtr
GetLsCacheFileList(const char *const item)
{
 int ci;
 int sortBy;
 int sortOrder;
 FileInfoListPtr filp;

 ci = LsCacheLookup(item);
 if (ci < 0) {



  Ls(item, 'l', "", ((void*)0));
  ci = LsCacheLookup(item);
  if (ci < 0)
   return ((void*)0);
 }

 sortBy = 'n';
 sortOrder = 'a';
 filp = &gLsCache[ci].fil;
 SortFileInfoList(filp, sortBy, sortOrder);
 return filp;
}
