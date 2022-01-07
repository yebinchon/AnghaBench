
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMC_KVMEM ;
 int MAX (int ,int ) ;
 int MAX_MEM_LEVEL ;
 int MAX_WBITS ;
 int kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;
 int zlib_deflate_workspacesize (int ,int ) ;
 int zlib_inflate_workspacesize () ;
 int zlib_workspace_cache ;

int
spl_zlib_init(void)
{
 int size;

 size = MAX(zlib_deflate_workspacesize(MAX_WBITS, MAX_MEM_LEVEL),
     zlib_inflate_workspacesize());

 zlib_workspace_cache = kmem_cache_create(
     "spl_zlib_workspace_cache",
     size, 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
     KMC_KVMEM);
 if (!zlib_workspace_cache)
  return (1);

 return (0);
}
