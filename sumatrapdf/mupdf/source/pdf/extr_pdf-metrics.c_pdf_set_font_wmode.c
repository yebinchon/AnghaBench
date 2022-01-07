
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wmode; } ;
typedef TYPE_1__ pdf_font_desc ;
typedef int fz_context ;



void
pdf_set_font_wmode(fz_context *ctx, pdf_font_desc *font, int wmode)
{
 font->wmode = wmode;
}
