
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zio_cksum_t ;
struct TYPE_3__ {int * acd_ctx; int * acd_zcp; int acd_byteorder; } ;
typedef TYPE_1__ zio_abd_checksum_data_t ;
typedef int uint64_t ;
typedef int fletcher_4_ctx_t ;
typedef int abd_t ;


 int ZIO_CHECKSUM_NATIVE ;
 int abd_fletcher_4_impl (int *,int ,TYPE_1__*) ;

void
abd_fletcher_4_native(abd_t *abd, uint64_t size,
    const void *ctx_template, zio_cksum_t *zcp)
{
 fletcher_4_ctx_t ctx;

 zio_abd_checksum_data_t acd = {
  .acd_byteorder = ZIO_CHECKSUM_NATIVE,
  .acd_zcp = zcp,
  .acd_ctx = &ctx
 };

 abd_fletcher_4_impl(abd, size, &acd);

}
