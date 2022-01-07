
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* rect ) (int *,TYPE_2__*,float,float,float,float) ;} ;
struct TYPE_6__ {TYPE_1__ fns; } ;
typedef TYPE_2__ fz_rasterizer ;
typedef int fz_context ;


 int stub1 (int *,TYPE_2__*,float,float,float,float) ;

__attribute__((used)) static inline void fz_insert_rasterizer_rect(fz_context *ctx, fz_rasterizer *r, float x0, float y0, float x1, float y1)
{
 r->fns.rect(ctx, r, x0, y0, x1, y1);
}
