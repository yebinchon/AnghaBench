
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int x1; int x0; int y1; int y0; } ;
struct TYPE_8__ {TYPE_3__* first_block; TYPE_1__ mediabox; } ;
typedef TYPE_2__ fz_stext_page ;
struct TYPE_9__ {scalar_t__ type; struct TYPE_9__* next; } ;
typedef TYPE_3__ fz_stext_block ;
typedef int fz_output ;
typedef int fz_context ;


 scalar_t__ FZ_STEXT_BLOCK_IMAGE ;
 scalar_t__ FZ_STEXT_BLOCK_TEXT ;
 int fz_print_stext_block_as_html (int *,int *,TYPE_3__*) ;
 int fz_print_stext_image_as_html (int *,int *,TYPE_3__*) ;
 int fz_write_printf (int *,int *,char*,int,int,int) ;
 int fz_write_string (int *,int *,char*) ;

void
fz_print_stext_page_as_html(fz_context *ctx, fz_output *out, fz_stext_page *page, int id)
{
 fz_stext_block *block;

 int w = page->mediabox.x1 - page->mediabox.x0;
 int h = page->mediabox.y1 - page->mediabox.y0;

 fz_write_printf(ctx, out, "<div id=\"page%d\" style=\"position:relative;width:%dpt;height:%dpt;background-color:white\">\n", id, w, h);

 for (block = page->first_block; block; block = block->next)
 {
  if (block->type == FZ_STEXT_BLOCK_IMAGE)
   fz_print_stext_image_as_html(ctx, out, block);
  else if (block->type == FZ_STEXT_BLOCK_TEXT)
   fz_print_stext_block_as_html(ctx, out, block);
 }

 fz_write_string(ctx, out, "</div>\n");
}
