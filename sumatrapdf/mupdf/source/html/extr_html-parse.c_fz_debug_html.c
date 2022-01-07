
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_html_box ;
typedef int fz_context ;


 int fz_debug_html_box (int *,int *,int ) ;

void
fz_debug_html(fz_context *ctx, fz_html_box *box)
{
 fz_debug_html_box(ctx, box, 0);
}
