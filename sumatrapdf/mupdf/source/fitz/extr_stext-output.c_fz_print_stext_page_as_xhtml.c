
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* first_block; } ;
typedef TYPE_1__ fz_stext_page ;
struct TYPE_7__ {scalar_t__ type; struct TYPE_7__* next; } ;
typedef TYPE_2__ fz_stext_block ;
typedef int fz_output ;
typedef int fz_context ;


 scalar_t__ FZ_STEXT_BLOCK_IMAGE ;
 scalar_t__ FZ_STEXT_BLOCK_TEXT ;
 int fz_print_stext_block_as_xhtml (int *,int *,TYPE_2__*) ;
 int fz_print_stext_image_as_xhtml (int *,int *,TYPE_2__*) ;
 int fz_write_printf (int *,int *,char*,int) ;
 int fz_write_string (int *,int *,char*) ;

void
fz_print_stext_page_as_xhtml(fz_context *ctx, fz_output *out, fz_stext_page *page, int id)
{
 fz_stext_block *block;

 fz_write_printf(ctx, out, "<div id=\"page%d\">\n", id);

 for (block = page->first_block; block; block = block->next)
 {
  if (block->type == FZ_STEXT_BLOCK_IMAGE)
   fz_print_stext_image_as_xhtml(ctx, out, block);
  else if (block->type == FZ_STEXT_BLOCK_TEXT)
   fz_print_stext_block_as_xhtml(ctx, out, block);
 }

 fz_write_string(ctx, out, "</div>\n");
}
