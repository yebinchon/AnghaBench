
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdf_processor ;
typedef int fz_context ;


 int fz_device_rgb (int *) ;
 int pdf_filter_cs (int *,int *,char*,int ) ;
 int pdf_filter_sc_color (int *,int *,int,float*) ;

__attribute__((used)) static void
pdf_filter_rg(fz_context *ctx, pdf_processor *proc, float r, float g, float b)
{
 float color[3] = { r, g, b };
 pdf_filter_cs(ctx, proc, "DeviceRGB", fz_device_rgb(ctx));
 pdf_filter_sc_color(ctx, proc, 3, color);
}
