
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int storable; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 int fz_drop_storable (int *,int *) ;

void
fz_drop_pixmap(fz_context *ctx, fz_pixmap *pix)
{
 fz_drop_storable(ctx, &pix->storable);
}
