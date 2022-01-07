
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 unsigned char const* fz_lookup_base14_font (int *,char*,int*) ;

const unsigned char *
pdf_lookup_substitute_font(fz_context *ctx, int mono, int serif, int bold, int italic, int *len)
{
 if (mono) {
  if (bold) {
   if (italic) return fz_lookup_base14_font(ctx, "Courier-BoldOblique", len);
   else return fz_lookup_base14_font(ctx, "Courier-Bold", len);
  } else {
   if (italic) return fz_lookup_base14_font(ctx, "Courier-Oblique", len);
   else return fz_lookup_base14_font(ctx, "Courier", len);
  }
 } else if (serif) {
  if (bold) {
   if (italic) return fz_lookup_base14_font(ctx, "Times-BoldItalic", len);
   else return fz_lookup_base14_font(ctx, "Times-Bold", len);
  } else {
   if (italic) return fz_lookup_base14_font(ctx, "Times-Italic", len);
   else return fz_lookup_base14_font(ctx, "Times-Roman", len);
  }
 } else {
  if (bold) {
   if (italic) return fz_lookup_base14_font(ctx, "Helvetica-BoldOblique", len);
   else return fz_lookup_base14_font(ctx, "Helvetica-Bold", len);
  } else {
   if (italic) return fz_lookup_base14_font(ctx, "Helvetica-Oblique", len);
   else return fz_lookup_base14_font(ctx, "Helvetica", len);
  }
 }
}
