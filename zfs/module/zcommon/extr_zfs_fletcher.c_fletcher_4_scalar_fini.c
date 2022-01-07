
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zio_cksum_t ;
struct TYPE_3__ {int scalar; } ;
typedef TYPE_1__ fletcher_4_ctx_t ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
fletcher_4_scalar_fini(fletcher_4_ctx_t *ctx, zio_cksum_t *zcp)
{
 memcpy(zcp, &ctx->scalar, sizeof (zio_cksum_t));
}
