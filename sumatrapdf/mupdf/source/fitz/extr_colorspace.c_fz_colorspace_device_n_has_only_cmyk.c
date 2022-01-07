
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ fz_colorspace ;


 int FZ_COLORSPACE_HAS_CMYK ;
 int FZ_COLORSPACE_HAS_CMYK_AND_SPOTS ;

int fz_colorspace_device_n_has_only_cmyk(fz_context *ctx, fz_colorspace *cs)
{
 return cs && ((cs->flags & FZ_COLORSPACE_HAS_CMYK_AND_SPOTS) == FZ_COLORSPACE_HAS_CMYK);
}
