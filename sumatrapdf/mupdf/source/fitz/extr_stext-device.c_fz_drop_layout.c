
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ fz_layout_block ;
typedef int fz_context ;


 int fz_drop_pool (int *,int ) ;

void fz_drop_layout(fz_context *ctx, fz_layout_block *block)
{
 if (block)
  fz_drop_pool(ctx, block->pool);
}
