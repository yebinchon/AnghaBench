
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ acd_byteorder; int acd_ctx; void* acd_private; } ;
typedef TYPE_1__ zio_abd_checksum_data_t ;
struct TYPE_6__ {int (* init_byteswap ) (int ) ;int (* init_native ) (int ) ;} ;
typedef TYPE_2__ fletcher_4_ops_t ;


 scalar_t__ ZIO_CHECKSUM_NATIVE ;
 TYPE_2__* fletcher_4_impl_get () ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
abd_fletcher_4_init(zio_abd_checksum_data_t *cdp)
{
 const fletcher_4_ops_t *ops = fletcher_4_impl_get();
 cdp->acd_private = (void *) ops;

 if (cdp->acd_byteorder == ZIO_CHECKSUM_NATIVE)
  ops->init_native(cdp->acd_ctx);
 else
  ops->init_byteswap(cdp->acd_ctx);
}
