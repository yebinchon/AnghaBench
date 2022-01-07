
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int kmem_cache_free (int ,int *) ;
 int vn_cache ;

void
vn_free(vnode_t *vp)
{
 kmem_cache_free(vn_cache, vp);
}
