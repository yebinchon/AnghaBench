
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_obj ;
typedef int fz_context ;


 int DA ;
 int PDF_NAME (int ) ;
 int fz_min (int,int ) ;
 float pdf_array_get_real (int *,int *,int) ;
 int pdf_array_len (int *,int *) ;
 int pdf_dict_get_inheritable (int *,int *,int ) ;
 int pdf_dict_put_string (int *,int *,int ,char*,int ) ;
 int pdf_field_mark_dirty (int *,int *) ;
 int pdf_parse_default_appearance (int *,char const*,char const**,float*,float*) ;
 int pdf_print_default_appearance (int *,char*,int,char const*,float,float*) ;
 char* pdf_to_str_buf (int *,int ) ;
 int strlen (char*) ;

void pdf_field_set_text_color(fz_context *ctx, pdf_obj *field, pdf_obj *col)
{
 char buf[100];
 const char *font;
 float size, color[3], black;
 const char *da = pdf_to_str_buf(ctx, pdf_dict_get_inheritable(ctx, field, PDF_NAME(DA)));

 pdf_parse_default_appearance(ctx, da, &font, &size, color);

 switch (pdf_array_len(ctx, col))
 {
 default:
  color[0] = color[1] = color[2] = 0;
  break;
 case 1:
  color[0] = color[1] = color[2] = pdf_array_get_real(ctx, col, 0);
  break;
 case 3:
  color[0] = pdf_array_get_real(ctx, col, 0);
  color[1] = pdf_array_get_real(ctx, col, 1);
  color[2] = pdf_array_get_real(ctx, col, 2);
  break;
 case 4:
  black = pdf_array_get_real(ctx, col, 3);
  color[0] = 1 - fz_min(1, pdf_array_get_real(ctx, col, 0) + black);
  color[1] = 1 - fz_min(1, pdf_array_get_real(ctx, col, 1) + black);
  color[2] = 1 - fz_min(1, pdf_array_get_real(ctx, col, 2) + black);
  break;
 }

 pdf_print_default_appearance(ctx, buf, sizeof buf, font, size, color);
 pdf_dict_put_string(ctx, field, PDF_NAME(DA), buf, strlen(buf));
 pdf_field_mark_dirty(ctx, field);
}
