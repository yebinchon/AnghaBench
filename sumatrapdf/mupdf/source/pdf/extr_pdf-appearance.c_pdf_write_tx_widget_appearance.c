
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int pdf_obj ;
struct TYPE_13__ {int obj; } ;
typedef TYPE_1__ pdf_annot ;
struct TYPE_14__ {float x1; float x0; float y1; float y0; } ;
typedef TYPE_2__ fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;
typedef int fz_buffer ;


 int MK ;
 int MaxLen ;
 int PDF_NAME (int ) ;
 int PDF_TX_FIELD_IS_COMB ;
 int PDF_TX_FIELD_IS_MULTILINE ;
 int R ;
 int fz_append_printf (int *,int *,char*,float,float,...) ;
 int fz_append_string (int *,int *,char*) ;
 TYPE_2__ fz_make_rect (int ,int ,float,float) ;
 int fz_rotate (int) ;
 int pdf_annot_default_appearance (int *,TYPE_1__*,char const**,float*,float*) ;
 int pdf_annot_quadding (int *,TYPE_1__*) ;
 int pdf_dict_get (int *,int ,int ) ;
 int pdf_dict_get_inheritable (int *,int ,int ) ;
 int pdf_dict_get_int (int *,int ,int ) ;
 int pdf_to_int (int *,int ) ;
 scalar_t__ pdf_write_MK_BC_appearance (int *,TYPE_1__*,int *) ;
 scalar_t__ pdf_write_MK_BG_appearance (int *,TYPE_1__*,int *) ;
 float pdf_write_border_appearance (int *,TYPE_1__*,int *) ;
 int write_variable_text (int *,TYPE_1__*,int *,int **,char const*,char const*,float,float*,int,float,float,float,float,float,int,int,int) ;

__attribute__((used)) static void
pdf_write_tx_widget_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf,
 fz_rect *rect, fz_rect *bbox, fz_matrix *matrix, pdf_obj **res,
 const char *text, int ff)
{
 const char *font;
 float size, color[3];
 float w, h, t, b;
 int has_bc = 0;
 int q, r;

 r = pdf_dict_get_int(ctx, pdf_dict_get(ctx, annot->obj, PDF_NAME(MK)), PDF_NAME(R));
 q = pdf_annot_quadding(ctx, annot);
 pdf_annot_default_appearance(ctx, annot, &font, &size, color);

 w = rect->x1 - rect->x0;
 h = rect->y1 - rect->y0;
 r = r % 360;
 if (r == 90 || r == 270)
  t = h, h = w, w = t;
 *matrix = fz_rotate(r);
 *bbox = fz_make_rect(0, 0, w, h);

 fz_append_string(ctx, buf, "/Tx BMC\nq\n");

 if (pdf_write_MK_BG_appearance(ctx, annot, buf))
  fz_append_printf(ctx, buf, "0 0 %g %g re\nf\n", w, h);

 b = pdf_write_border_appearance(ctx, annot, buf);
 if (b > 0 && pdf_write_MK_BC_appearance(ctx, annot, buf))
 {
  fz_append_printf(ctx, buf, "%g %g %g %g re\ns\n", b/2, b/2, w-b, h-b);
  has_bc = 1;
 }

 fz_append_printf(ctx, buf, "%g %g %g %g re\nW\nn\n", b, b, w-b*2, h-b*2);

 if (ff & PDF_TX_FIELD_IS_MULTILINE)
 {
  write_variable_text(ctx, annot, buf, res, text, font, size, color, q, w, h, b*2,
   1.116f, 1.116f, 1, 0, 1);
 }
 else if (ff & PDF_TX_FIELD_IS_COMB)
 {
  int maxlen = pdf_to_int(ctx, pdf_dict_get_inheritable(ctx, annot->obj, PDF_NAME(MaxLen)));
  if (has_bc && maxlen > 1)
  {
   float cell_w = (w - 2 * b) / maxlen;
   int i;
   for (i = 1; i < maxlen; ++i)
   {
    float x = b + cell_w * i;
    fz_append_printf(ctx, buf, "%g %g m %g %g l s\n", x, b, x, h-b);
   }
  }
  write_variable_text(ctx, annot, buf, res, text, font, size, color, q, w, h, 0,
   0.8f, 1.2f, 0, maxlen, 0);
 }
 else
 {
  write_variable_text(ctx, annot, buf, res, text, font, size, color, q, w, h, b*2,
   0.8f, 1.2f, 0, 0, 0);
 }

 fz_append_string(ctx, buf, "Q\nEMC\n");
}
