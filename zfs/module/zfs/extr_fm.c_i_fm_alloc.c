
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nv_alloc_t ;


 int KM_SLEEP ;
 void* kmem_zalloc (size_t,int ) ;

__attribute__((used)) static void *
i_fm_alloc(nv_alloc_t *nva, size_t size)
{
 return (kmem_zalloc(size, KM_SLEEP));
}
