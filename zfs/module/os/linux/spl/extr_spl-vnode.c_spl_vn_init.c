
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int file_t ;


 void* kmem_cache_create (char*,int,int,int ,int ,int *,int *,int *,int ) ;
 int spin_lock_init (int *) ;
 void* vn_cache ;
 int vn_cache_constructor ;
 int vn_cache_destructor ;
 void* vn_file_cache ;
 int vn_file_cache_constructor ;
 int vn_file_cache_destructor ;
 int vn_file_lock ;

int
spl_vn_init(void)
{
 spin_lock_init(&vn_file_lock);

 vn_cache = kmem_cache_create("spl_vn_cache",
     sizeof (struct vnode), 64, vn_cache_constructor,
     vn_cache_destructor, ((void*)0), ((void*)0), ((void*)0), 0);

 vn_file_cache = kmem_cache_create("spl_vn_file_cache",
     sizeof (file_t), 64, vn_file_cache_constructor,
     vn_file_cache_destructor, ((void*)0), ((void*)0), ((void*)0), 0);

 return (0);
}
