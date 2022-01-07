
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ acd_byteorder; int acd_zcp; int acd_ctx; scalar_t__ acd_private; } ;
typedef TYPE_1__ zio_abd_checksum_data_t ;
struct TYPE_6__ {int (* fini_byteswap ) (int ,int ) ;int (* fini_native ) (int ,int ) ;} ;
typedef TYPE_2__ fletcher_4_ops_t ;


 int ASSERT (TYPE_2__*) ;
 scalar_t__ ZIO_CHECKSUM_NATIVE ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void
abd_fletcher_4_fini(zio_abd_checksum_data_t *cdp)
{
 fletcher_4_ops_t *ops = (fletcher_4_ops_t *)cdp->acd_private;

 ASSERT(ops);

 if (cdp->acd_byteorder == ZIO_CHECKSUM_NATIVE)
  ops->fini_native(cdp->acd_ctx, cdp->acd_zcp);
 else
  ops->fini_byteswap(cdp->acd_ctx, cdp->acd_zcp);
}
