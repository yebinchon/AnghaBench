
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int xps_document ;
struct closure {int dummy; } ;
struct TYPE_4__ {int x1; int y1; } ;
typedef TYPE_1__ fz_rect ;
typedef int fz_matrix ;
typedef int fz_context ;


 int TILE_FLIP_X ;
 int TILE_FLIP_X_Y ;
 int TILE_FLIP_Y ;
 int fz_pre_scale (int ,int,int) ;
 int fz_pre_translate (int ,int,int) ;
 int xps_paint_tiling_brush_clipped (int *,int *,int ,TYPE_1__,struct closure*) ;

__attribute__((used)) static void
xps_paint_tiling_brush(fz_context *ctx, xps_document *doc, fz_matrix ctm, fz_rect viewbox, int tile_mode, struct closure *c)
{
 fz_matrix ttm;

 xps_paint_tiling_brush_clipped(ctx, doc, ctm, viewbox, c);

 if (tile_mode == TILE_FLIP_X || tile_mode == TILE_FLIP_X_Y)
 {
  ttm = fz_pre_scale(fz_pre_translate(ctm, viewbox.x1 * 2, 0), -1, 1);
  xps_paint_tiling_brush_clipped(ctx, doc, ttm, viewbox, c);
 }

 if (tile_mode == TILE_FLIP_Y || tile_mode == TILE_FLIP_X_Y)
 {
  ttm = fz_pre_scale(fz_pre_translate(ctm, 0, viewbox.y1 * 2), 1, -1);
  xps_paint_tiling_brush_clipped(ctx, doc, ttm, viewbox, c);
 }

 if (tile_mode == TILE_FLIP_X_Y)
 {
  ttm = fz_pre_scale(fz_pre_translate(ctm, viewbox.x1 * 2, viewbox.y1 * 2), -1, -1);
  xps_paint_tiling_brush_clipped(ctx, doc, ttm, viewbox, c);
 }
}
