
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __GFP_FS ;
 void* kmem_cache_alloc (int ,int) ;
 int zlib_workspace_cache ;

__attribute__((used)) static void *
zlib_workspace_alloc(int flags)
{
 return (kmem_cache_alloc(zlib_workspace_cache, flags & ~(__GFP_FS)));
}
