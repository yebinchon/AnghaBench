
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ shade; scalar_t__ pattern; scalar_t__ colorspace; } ;
typedef TYPE_1__ pdf_material ;
typedef int fz_context ;


 int fz_keep_colorspace (int *,scalar_t__) ;
 int fz_keep_shade (int *,scalar_t__) ;
 int pdf_keep_pattern (int *,scalar_t__) ;

__attribute__((used)) static pdf_material *
pdf_keep_material(fz_context *ctx, pdf_material *mat)
{
 if (mat->colorspace)
  fz_keep_colorspace(ctx, mat->colorspace);
 if (mat->pattern)
  pdf_keep_pattern(ctx, mat->pattern);
 if (mat->shade)
  fz_keep_shade(ctx, mat->shade);
 return mat;
}
