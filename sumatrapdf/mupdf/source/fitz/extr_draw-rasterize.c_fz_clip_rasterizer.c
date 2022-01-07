
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int y1; int x1; int y0; int x0; } ;
struct TYPE_9__ {TYPE_1__ clip; } ;
typedef TYPE_2__ fz_rasterizer ;
struct TYPE_10__ {void* y1; void* x1; void* y0; void* x0; } ;
typedef TYPE_3__ fz_irect ;
typedef int fz_context ;


 void* fz_idiv (int ,int const) ;
 void* fz_idiv_up (int ,int const) ;
 int fz_rasterizer_aa_hscale (TYPE_2__ const*) ;
 int fz_rasterizer_aa_vscale (TYPE_2__ const*) ;

__attribute__((used)) static fz_irect fz_clip_rasterizer(fz_context *ctx, const fz_rasterizer *rast)
{
 fz_irect r;
 const int hscale = fz_rasterizer_aa_hscale(rast);
 const int vscale = fz_rasterizer_aa_vscale(rast);

 r.x0 = fz_idiv(rast->clip.x0, hscale);
 r.y0 = fz_idiv(rast->clip.y0, vscale);
 r.x1 = fz_idiv_up(rast->clip.x1, hscale);
 r.y1 = fz_idiv_up(rast->clip.y1, vscale);

 return r;
}
