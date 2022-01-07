
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {float x0; float y0; float x1; float y1; } ;
typedef TYPE_2__ fz_rect ;
struct TYPE_8__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
struct TYPE_10__ {TYPE_1__ clip; } ;
typedef TYPE_3__ fz_rasterizer ;
typedef int fz_context ;


 int fz_rasterizer_aa_hscale (TYPE_3__ const*) ;
 int fz_rasterizer_aa_vscale (TYPE_3__ const*) ;

fz_rect fz_scissor_rasterizer(fz_context *ctx, const fz_rasterizer *rast)
{
 fz_rect r;
 const int hscale = fz_rasterizer_aa_hscale(rast);
 const int vscale = fz_rasterizer_aa_vscale(rast);

 r.x0 = ((float)rast->clip.x0) / hscale;
 r.y0 = ((float)rast->clip.y0) / vscale;
 r.x1 = ((float)rast->clip.x1) / hscale;
 r.y1 = ((float)rast->clip.y1) / vscale;

 return r;
}
