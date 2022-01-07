
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int pool; TYPE_4__* first_block; } ;
typedef TYPE_3__ fz_stext_page ;
struct TYPE_6__ {int image; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ u; struct TYPE_9__* next; } ;
typedef TYPE_4__ fz_stext_block ;
typedef int fz_context ;


 scalar_t__ FZ_STEXT_BLOCK_IMAGE ;
 int fz_drop_image (int *,int ) ;
 int fz_drop_pool (int *,int ) ;

void
fz_drop_stext_page(fz_context *ctx, fz_stext_page *page)
{
 if (page)
 {
  fz_stext_block *block;
  for (block = page->first_block; block; block = block->next)
   if (block->type == FZ_STEXT_BLOCK_IMAGE)
    fz_drop_image(ctx, block->u.i.image);
  fz_drop_pool(ctx, page->pool);
 }
}
