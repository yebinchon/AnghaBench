
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_processor ;
typedef int fz_context ;


 int fz_device_cmyk (int *) ;
 int pdf_filter_cs (int *,int *,char*,int ) ;
 int pdf_filter_sc_color (int *,int *,int,float*) ;

__attribute__((used)) static void
pdf_filter_k(fz_context *ctx, pdf_processor *proc, float c, float m, float y, float k)
{
 float color[4] = { c, m, y, k };
 pdf_filter_cs(ctx, proc, "DeviceCMYK", fz_device_cmyk(ctx));
 pdf_filter_sc_color(ctx, proc, 4, color);
}
