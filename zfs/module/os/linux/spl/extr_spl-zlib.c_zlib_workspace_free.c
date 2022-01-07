
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_free (int ,void*) ;
 int zlib_workspace_cache ;

__attribute__((used)) static void
zlib_workspace_free(void *workspace)
{
 kmem_cache_free(zlib_workspace_cache, workspace);
}
