
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ fz_colorspace ;


 scalar_t__ FZ_COLORSPACE_CMYK ;
 scalar_t__ FZ_COLORSPACE_GRAY ;
 scalar_t__ FZ_COLORSPACE_RGB ;

int fz_is_valid_blend_colorspace(fz_context *ctx, fz_colorspace *cs)
{
 return cs == ((void*)0) ||
  cs->type == FZ_COLORSPACE_GRAY ||
  cs->type == FZ_COLORSPACE_RGB ||
  cs->type == FZ_COLORSPACE_CMYK;
}
