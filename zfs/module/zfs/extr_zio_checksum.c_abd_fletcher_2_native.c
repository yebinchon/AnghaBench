
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zio_cksum_t ;
typedef int uint64_t ;
typedef int abd_t ;


 int abd_iterate_func (int *,int ,int ,int ,int *) ;
 int fletcher_2_incremental_native ;
 int fletcher_init (int *) ;

void
abd_fletcher_2_native(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 fletcher_init(zcp);
 (void) abd_iterate_func(abd, 0, size,
     fletcher_2_incremental_native, zcp);
}
