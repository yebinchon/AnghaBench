
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_lock; } ;


 int mutex_destroy (int *) ;

__attribute__((used)) static void
vn_cache_destructor(void *buf, void *cdrarg)
{
 struct vnode *vp = buf;

 mutex_destroy(&vp->v_lock);
}
