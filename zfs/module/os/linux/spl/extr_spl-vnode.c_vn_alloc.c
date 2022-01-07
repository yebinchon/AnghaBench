
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ v_type; int * v_file; } ;
typedef TYPE_1__ vnode_t ;


 TYPE_1__* kmem_cache_alloc (int ,int) ;
 int vn_cache ;

vnode_t *
vn_alloc(int flag)
{
 vnode_t *vp;

 vp = kmem_cache_alloc(vn_cache, flag);
 if (vp != ((void*)0)) {
  vp->v_file = ((void*)0);
  vp->v_type = 0;
 }

 return (vp);
}
