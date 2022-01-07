
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int hb_buffer_t ;
typedef int fz_matrix ;
struct TYPE_8__ {float* border; float* padding; float x; float y; float w; float b; struct TYPE_8__* next; struct TYPE_8__* down; scalar_t__ list_item; TYPE_1__* style; } ;
typedef TYPE_2__ fz_html_box ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_7__ {scalar_t__ visibility; int * border_color; int background_color; } ;


 size_t B ;
 size_t L ;
 size_t R ;
 size_t T ;
 scalar_t__ V_VISIBLE ;
 int assert (int ) ;
 int draw_box (int *,TYPE_2__*,float,float,int *,int ,int *) ;
 int draw_list_mark (int *,TYPE_2__*,float,float,int *,int ,scalar_t__) ;
 int draw_rect (int *,int *,int ,float,int ,float,float,float,float) ;
 int fz_html_box_has_boxes (TYPE_2__*) ;

__attribute__((used)) static void draw_block_box(fz_context *ctx, fz_html_box *box, float page_top, float page_bot, fz_device *dev, fz_matrix ctm, hb_buffer_t *hb_buf)
{
 float x0, y0, x1, y1;

 float *border = box->border;
 float *padding = box->padding;

 assert(fz_html_box_has_boxes(box));
 x0 = box->x - padding[L];
 y0 = box->y - padding[T];
 x1 = box->x + box->w + padding[R];
 y1 = box->b + padding[B];

 if (y0 > page_bot || y1 < page_top)
  return;

 if (box->style->visibility == V_VISIBLE)
 {
  draw_rect(ctx, dev, ctm, page_top, box->style->background_color, x0, y0, x1, y1);

  if (border[T] > 0)
   draw_rect(ctx, dev, ctm, page_top, box->style->border_color[T], x0 - border[L], y0 - border[T], x1 + border[R], y0);
  if (border[B] > 0)
   draw_rect(ctx, dev, ctm, page_top, box->style->border_color[B], x0 - border[L], y1, x1 + border[R], y1 + border[B]);
  if (border[L] > 0)
   draw_rect(ctx, dev, ctm, page_top, box->style->border_color[L], x0 - border[L], y0 - border[T], x0, y1 + border[B]);
  if (border[R] > 0)
   draw_rect(ctx, dev, ctm, page_top, box->style->border_color[R], x1, y0 - border[T], x1 + border[R], y1 + border[B]);

  if (box->list_item)
   draw_list_mark(ctx, box, page_top, page_bot, dev, ctm, box->list_item);
 }

 for (box = box->down; box; box = box->next)
  draw_box(ctx, box, page_top, page_bot, dev, ctm, hb_buf);
}
