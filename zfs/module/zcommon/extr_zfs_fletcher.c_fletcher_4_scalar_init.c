
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int scalar; } ;
typedef TYPE_1__ fletcher_4_ctx_t ;


 int ZIO_SET_CHECKSUM (int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
fletcher_4_scalar_init(fletcher_4_ctx_t *ctx)
{
 ZIO_SET_CHECKSUM(&ctx->scalar, 0, 0, 0, 0);
}
