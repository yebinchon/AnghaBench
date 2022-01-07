
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int storable; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;


 TYPE_1__* fz_keep_storable (int *,int *) ;

fz_pixmap *
fz_keep_pixmap(fz_context *ctx, fz_pixmap *pix)
{
 return fz_keep_storable(ctx, &pix->storable);
}
