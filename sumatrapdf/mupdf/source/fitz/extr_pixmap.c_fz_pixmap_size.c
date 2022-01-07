
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int w; int h; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;



size_t
fz_pixmap_size(fz_context *ctx, fz_pixmap * pix)
{
 if (pix == ((void*)0))
  return 0;
 return sizeof(*pix) + pix->n * pix->w * pix->h;
}
