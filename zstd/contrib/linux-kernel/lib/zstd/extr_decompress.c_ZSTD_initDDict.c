
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_customMem ;
typedef int ZSTD_DDict ;


 int * ZSTD_createDDict_advanced (void const*,size_t,int,int const) ;
 int ZSTD_initStack (void*,size_t) ;

ZSTD_DDict *ZSTD_initDDict(const void *dict, size_t dictSize, void *workspace, size_t workspaceSize)
{
 ZSTD_customMem const stackMem = ZSTD_initStack(workspace, workspaceSize);
 return ZSTD_createDDict_advanced(dict, dictSize, 1, stackMem);
}
