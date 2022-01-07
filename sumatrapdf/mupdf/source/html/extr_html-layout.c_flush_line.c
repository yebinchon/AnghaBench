
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_html_flow ;
struct TYPE_4__ {float b; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 float fmodf (float,float) ;
 int layout_line (int *,float,float,float,int,int *,int *,TYPE_1__*,float,float) ;
 float measure_line (int *,int *,float*) ;

__attribute__((used)) static void flush_line(fz_context *ctx, fz_html_box *box, float page_h, float page_w, float line_w, int align, float indent, fz_html_flow *a, fz_html_flow *b)
{
 float avail, line_h, baseline;
 line_h = measure_line(a, b, &baseline);
 if (page_h > 0)
 {
  avail = page_h - fmodf(box->b, page_h);
  if (line_h > avail)
   box->b += avail;
 }
 layout_line(ctx, indent, page_w, line_w, align, a, b, box, baseline, line_h);
 box->b += line_h;
}
