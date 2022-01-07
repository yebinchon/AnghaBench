
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int gtop; TYPE_3__* gstate; } ;
typedef TYPE_2__ pdf_run_processor ;
typedef int pdf_obj ;
struct TYPE_8__ {float size; int * font; } ;
struct TYPE_10__ {TYPE_1__ text; } ;
typedef TYPE_3__ pdf_gstate ;
typedef int pdf_font_desc ;
typedef int fz_context ;


 int fz_warn (int *,char*) ;
 int * pdf_array_get (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 scalar_t__ pdf_is_array (int *,int *) ;
 scalar_t__ pdf_is_string (int *,int *) ;
 int pdf_show_space (int *,TYPE_2__*,float) ;
 int pdf_show_string (int *,TYPE_2__*,unsigned char*,int ) ;
 float pdf_to_real (int *,int *) ;
 scalar_t__ pdf_to_str_buf (int *,int *) ;
 int pdf_to_str_len (int *,int *) ;
 int show_string (int *,TYPE_2__*,unsigned char*,int ) ;

__attribute__((used)) static void
pdf_show_text(fz_context *ctx, pdf_run_processor *pr, pdf_obj *text)
{
 pdf_gstate *gstate = pr->gstate + pr->gtop;
 pdf_font_desc *fontdesc = gstate->text.font;
 int i;

 if (!fontdesc)
 {
  fz_warn(ctx, "cannot draw text since font and size not set");
  return;
 }

 if (pdf_is_array(ctx, text))
 {
  int n = pdf_array_len(ctx, text);
  for (i = 0; i < n; i++)
  {
   pdf_obj *item = pdf_array_get(ctx, text, i);
   if (pdf_is_string(ctx, item))
    show_string(ctx, pr, (unsigned char *)pdf_to_str_buf(ctx, item), pdf_to_str_len(ctx, item));
   else
    pdf_show_space(ctx, pr, - pdf_to_real(ctx, item) * gstate->text.size * 0.001f);
  }
 }
 else if (pdf_is_string(ctx, text))
 {
  pdf_show_string(ctx, pr, (unsigned char *)pdf_to_str_buf(ctx, text), pdf_to_str_len(ctx, text));
 }
}
