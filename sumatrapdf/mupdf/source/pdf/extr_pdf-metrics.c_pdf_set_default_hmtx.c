
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int w; } ;
struct TYPE_5__ {TYPE_1__ dhmtx; } ;
typedef TYPE_2__ pdf_font_desc ;
typedef int fz_context ;



void
pdf_set_default_hmtx(fz_context *ctx, pdf_font_desc *font, int w)
{
 font->dhmtx.w = w;
}
