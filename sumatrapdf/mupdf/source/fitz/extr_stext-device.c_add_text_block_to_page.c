
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_stext_page ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ fz_stext_block ;
typedef int fz_context ;


 int FZ_STEXT_BLOCK_TEXT ;
 TYPE_1__* add_block_to_page (int *,int *) ;

__attribute__((used)) static fz_stext_block *
add_text_block_to_page(fz_context *ctx, fz_stext_page *page)
{
 fz_stext_block *block = add_block_to_page(ctx, page);
 block->type = FZ_STEXT_BLOCK_TEXT;
 return block;
}
