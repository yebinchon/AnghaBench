
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int f_vnode; int f_file; } ;
typedef TYPE_1__ file_t ;


 int ASSERT (int ) ;
 int fput (int ) ;
 int kmem_cache_free (int ,TYPE_1__*) ;
 int vn_file_cache ;
 int vn_free (int ) ;

__attribute__((used)) static void releasef_locked(file_t *fp)
{
 ASSERT(fp->f_file);
 ASSERT(fp->f_vnode);


 fput(fp->f_file);
 vn_free(fp->f_vnode);

 kmem_cache_free(vn_file_cache, fp);
}
