
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int y; int w; } ;
struct TYPE_5__ {TYPE_1__ dvmtx; } ;
typedef TYPE_2__ pdf_font_desc ;
typedef int fz_context ;



void
pdf_set_default_vmtx(fz_context *ctx, pdf_font_desc *font, int y, int w)
{
 font->dvmtx.y = y;
 font->dvmtx.w = w;
}
