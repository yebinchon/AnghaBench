
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;



int
fz_pixmap_components(fz_context *ctx, fz_pixmap *pix)
{
 return pix->n;
}
