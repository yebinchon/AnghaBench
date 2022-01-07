
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_rect ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int fz_begin_tile_id (int *,int *,int ,int ,float,float,int ,int ) ;

void
fz_begin_tile(fz_context *ctx, fz_device *dev, fz_rect area, fz_rect view, float xstep, float ystep, fz_matrix ctm)
{
 (void)fz_begin_tile_id(ctx, dev, area, view, xstep, ystep, ctm, 0);
}
