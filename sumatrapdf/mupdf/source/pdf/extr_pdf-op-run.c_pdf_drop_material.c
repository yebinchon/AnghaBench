
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int shade; int pattern; int colorspace; } ;
typedef TYPE_1__ pdf_material ;
typedef int fz_context ;


 int fz_drop_colorspace (int *,int ) ;
 int fz_drop_shade (int *,int ) ;
 int pdf_drop_pattern (int *,int ) ;

__attribute__((used)) static pdf_material *
pdf_drop_material(fz_context *ctx, pdf_material *mat)
{
 fz_drop_colorspace(ctx, mat->colorspace);
 pdf_drop_pattern(ctx, mat->pattern);
 fz_drop_shade(ctx, mat->shade);
 return mat;
}
