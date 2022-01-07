
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int storable; } ;
typedef TYPE_1__ pdf_font_desc ;
typedef int fz_context ;


 TYPE_1__* fz_keep_storable (int *,int *) ;

pdf_font_desc *
pdf_keep_font(fz_context *ctx, pdf_font_desc *fontdesc)
{
 return fz_keep_storable(ctx, &fontdesc->storable);
}
