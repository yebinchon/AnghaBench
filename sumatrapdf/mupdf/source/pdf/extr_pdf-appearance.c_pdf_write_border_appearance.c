
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_annot ;
typedef int fz_context ;
typedef int fz_buffer ;


 int fz_append_printf (int *,int *,char*,float) ;
 float pdf_annot_border (int *,int *) ;

__attribute__((used)) static float pdf_write_border_appearance(fz_context *ctx, pdf_annot *annot, fz_buffer *buf)
{
 float w = pdf_annot_border(ctx, annot);
 fz_append_printf(ctx, buf, "%g w\n", w);
 return w;
}
