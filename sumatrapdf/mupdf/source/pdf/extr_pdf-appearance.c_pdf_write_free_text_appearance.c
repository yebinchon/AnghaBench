
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


 int PDF_NAME (int ) ;
 int Rotate ;
 int fz_append_printf (int *,int *,char*,float,float,...) ;
 TYPE_2__ fz_make_rect (int ,int ,float,float) ;
 int fz_rotate (int) ;
 char* pdf_annot_contents (int *,TYPE_1__*) ;
 int pdf_annot_default_appearance (int *,TYPE_1__*,char const**,float*,float*) ;
 int pdf_annot_quadding (int *,TYPE_1__*) ;
 int pdf_dict_get_int (int *,int ,int ) ;
 float pdf_write_border_appearance (int *,TYPE_1__*,int *) ;
 scalar_t__ pdf_write_fill_color_appearance (int *,TYPE_1__*,int *) ;
 int write_variable_text (int *,TYPE_1__*,int *,int **,char const*,char const*,float,float*,int,float,float,float,float,float,int,int ,int ) ;

__attribute__((used)) static void
pdf_write_free_text_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf,
 fz_rect *rect, fz_rect *bbox, fz_matrix *matrix, pdf_obj **res)
{
 const char *font;
 float size, color[3];
 const char *text;
 float w, h, t, b;
 int q, r;


 text = pdf_annot_contents(ctx, annot);
 r = pdf_dict_get_int(ctx, annot->obj, PDF_NAME(Rotate));
 q = pdf_annot_quadding(ctx, annot);
 pdf_annot_default_appearance(ctx, annot, &font, &size, color);

 w = rect->x1 - rect->x0;
 h = rect->y1 - rect->y0;
 if (r == 90 || r == 270)
  t = h, h = w, w = t;

 *matrix = fz_rotate(r);
 *bbox = fz_make_rect(0, 0, w, h);

 if (pdf_write_fill_color_appearance(ctx, annot, buf))
  fz_append_printf(ctx, buf, "0 0 %g %g re\nf\n", w, h);

 b = pdf_write_border_appearance(ctx, annot, buf);
 if (b > 0)
 {
  fz_append_printf(ctx, buf, "%g %g %g RG\n", color[0], color[1], color[2]);
  fz_append_printf(ctx, buf, "%g %g %g %g re\nS\n", b/2, b/2, w-b, h-b);
 }

 fz_append_printf(ctx, buf, "%g %g %g %g re\nW\nn\n", b, b, w-b*2, h-b*2);

 write_variable_text(ctx, annot, buf, res, text, font, size, color, q, w, h, b*2,
  0.8f, 1.2f, 1, 0, 0);
}
