
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int fz_stext_page ;
struct TYPE_6__ {int image; int transform; } ;
struct TYPE_7__ {TYPE_1__ i; } ;
struct TYPE_8__ {int bbox; TYPE_2__ u; int type; } ;
typedef TYPE_3__ fz_stext_block ;
typedef int fz_matrix ;
typedef int fz_image ;
typedef int fz_context ;


 int FZ_STEXT_BLOCK_IMAGE ;
 TYPE_3__* add_block_to_page (int *,int *) ;
 int fz_keep_image (int *,int *) ;
 int fz_transform_rect (int ,int ) ;
 int fz_unit_rect ;

__attribute__((used)) static fz_stext_block *
add_image_block_to_page(fz_context *ctx, fz_stext_page *page, fz_matrix ctm, fz_image *image)
{
 fz_stext_block *block = add_block_to_page(ctx, page);
 block->type = FZ_STEXT_BLOCK_IMAGE;
 block->u.i.transform = ctm;
 block->u.i.image = fz_keep_image(ctx, image);
 block->bbox = fz_transform_rect(fz_unit_rect, ctm);
 return block;
}
