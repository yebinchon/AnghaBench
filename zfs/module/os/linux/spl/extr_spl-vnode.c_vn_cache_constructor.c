
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_lock; } ;


 int MUTEX_DEFAULT ;
 int mutex_init (int *,int *,int ,int *) ;

__attribute__((used)) static int
vn_cache_constructor(void *buf, void *cdrarg, int kmflags)
{
 struct vnode *vp = buf;

 mutex_init(&vp->v_lock, ((void*)0), MUTEX_DEFAULT, ((void*)0));

 return (0);
}
