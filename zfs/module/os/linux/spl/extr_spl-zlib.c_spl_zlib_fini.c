
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int *) ;
 int * zlib_workspace_cache ;

void
spl_zlib_fini(void)
{
 kmem_cache_destroy(zlib_workspace_cache);
 zlib_workspace_cache = ((void*)0);
}
