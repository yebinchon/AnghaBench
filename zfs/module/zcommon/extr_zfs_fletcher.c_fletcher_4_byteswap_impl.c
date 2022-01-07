
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zio_cksum_t ;
typedef int uint64_t ;
struct TYPE_3__ {int (* fini_byteswap ) (int *,int *) ;int (* compute_byteswap ) (int *,void const*,int ) ;int (* init_byteswap ) (int *) ;} ;
typedef TYPE_1__ fletcher_4_ops_t ;
typedef int fletcher_4_ctx_t ;


 TYPE_1__* fletcher_4_impl_get () ;
 int stub1 (int *) ;
 int stub2 (int *,void const*,int ) ;
 int stub3 (int *,int *) ;

__attribute__((used)) static inline void
fletcher_4_byteswap_impl(const void *buf, uint64_t size, zio_cksum_t *zcp)
{
 fletcher_4_ctx_t ctx;
 const fletcher_4_ops_t *ops = fletcher_4_impl_get();

 ops->init_byteswap(&ctx);
 ops->compute_byteswap(&ctx, buf, size);
 ops->fini_byteswap(&ctx, zcp);
}
