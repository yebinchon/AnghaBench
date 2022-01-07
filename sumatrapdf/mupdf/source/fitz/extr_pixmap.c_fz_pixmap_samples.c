
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* samples; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_context ;



unsigned char *
fz_pixmap_samples(fz_context *ctx, fz_pixmap *pix)
{
 if (!pix)
  return ((void*)0);
 return pix->samples;
}
