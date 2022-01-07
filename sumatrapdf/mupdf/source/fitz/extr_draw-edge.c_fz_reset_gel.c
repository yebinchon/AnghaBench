
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_rasterizer ;
struct TYPE_2__ {scalar_t__ alen; scalar_t__ len; } ;
typedef TYPE_1__ fz_gel ;
typedef int fz_context ;



__attribute__((used)) static int
fz_reset_gel(fz_context *ctx, fz_rasterizer *rast)
{
 fz_gel *gel = (fz_gel *)rast;

 gel->len = 0;
 gel->alen = 0;

 return 0;
}
