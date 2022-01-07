
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zbookmark_phys_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int blkptr_t ;
typedef int blkptr_cb_t ;


 int ZB_DESTROYED_OBJSET ;
 int traverse_impl (int *,int *,int ,int *,int ,int *,int,int ,void*) ;

int
traverse_dataset_destroyed(spa_t *spa, blkptr_t *blkptr,
    uint64_t txg_start, zbookmark_phys_t *resume, int flags,
    blkptr_cb_t func, void *arg)
{
 return (traverse_impl(spa, ((void*)0), ZB_DESTROYED_OBJSET,
     blkptr, txg_start, resume, flags, func, arg));
}
