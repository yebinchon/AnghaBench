
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int pdf_font_desc ;
struct TYPE_15__ {int char_ty; int char_tx; } ;
struct TYPE_16__ {TYPE_3__ tos; TYPE_6__* chain; TYPE_5__* gstate; } ;
typedef TYPE_4__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_13__ {int * font; } ;
struct TYPE_14__ {TYPE_1__ text; } ;
struct TYPE_17__ {TYPE_2__ pending; } ;
typedef TYPE_5__ filter_gstate ;
struct TYPE_18__ {int (* op_Tj ) (int *,TYPE_6__*,char*,int) ;} ;


 int FLUSH_ALL ;
 int adjust_for_removed_space (int *,TYPE_4__*) ;
 int adjust_text (int *,TYPE_4__*,int ,int ) ;
 int filter_flush (int *,TYPE_4__*,int ) ;
 int filter_string_to_segment (int *,TYPE_4__*,unsigned char*,int,int*,int*,int*) ;
 int flush_adjustment (int *,TYPE_4__*) ;
 int stub1 (int *,TYPE_6__*,char*,int) ;

__attribute__((used)) static void
filter_show_string(fz_context *ctx, pdf_filter_processor *p, unsigned char *buf, int len)
{
 filter_gstate *gstate = p->gstate;
 pdf_font_desc *fontdesc = gstate->pending.text.font;
 int i, inc, removed_space;

 if (!fontdesc)
  return;

 i = 0;
 while (i < len)
 {
  int start = i;
  filter_string_to_segment(ctx, p, buf, len, &i, &inc, &removed_space);
  if (start != i)
  {

   filter_flush(ctx, p, FLUSH_ALL);
   flush_adjustment(ctx, p);
   if (p->chain->op_Tj)
    p->chain->op_Tj(ctx, p->chain, (char *)buf+start, i-start);
  }
  if (i != len)
  {
   adjust_text(ctx, p, p->tos.char_tx, p->tos.char_ty);
   i += inc;
  }
  if (removed_space)
   adjust_for_removed_space(ctx, p);
 }
}
