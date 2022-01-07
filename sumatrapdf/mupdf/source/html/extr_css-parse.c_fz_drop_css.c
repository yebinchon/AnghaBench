
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ fz_css ;
typedef int fz_context ;


 int fz_drop_pool (int *,int ) ;

void fz_drop_css(fz_context *ctx, fz_css *css)
{
 if (css)
  fz_drop_pool(ctx, css->pool);
}
