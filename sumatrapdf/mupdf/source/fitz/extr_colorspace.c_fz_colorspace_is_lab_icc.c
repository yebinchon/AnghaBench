
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {scalar_t__ type; int flags; } ;
typedef TYPE_1__ fz_colorspace ;


 int FZ_COLORSPACE_IS_ICC ;
 scalar_t__ FZ_COLORSPACE_LAB ;

int fz_colorspace_is_lab_icc(fz_context *ctx, fz_colorspace *cs)
{
 return cs && (cs->type == FZ_COLORSPACE_LAB) && (cs->flags & FZ_COLORSPACE_IS_ICC);
}
