
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tile ;
typedef int fz_rect ;
typedef int fz_matrix ;
struct TYPE_3__ {float xstep; float ystep; int id; int view; } ;
typedef TYPE_1__ fz_list_tile_data ;
typedef int fz_device ;
typedef int fz_context ;


 int FZ_CMD_BEGIN_TILE ;
 int fz_append_display_node (int *,int *,int ,int ,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,int) ;

__attribute__((used)) static int
fz_list_begin_tile(fz_context *ctx, fz_device *dev, fz_rect area, fz_rect view, float xstep, float ystep, fz_matrix ctm, int id)
{
 fz_list_tile_data tile;

 tile.xstep = xstep;
 tile.ystep = ystep;
 tile.view = view;
 tile.id = id;
 fz_append_display_node(
  ctx,
  dev,
  FZ_CMD_BEGIN_TILE,
  0,
  &area,
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  &ctm,
  ((void*)0),
  &tile,
  sizeof(tile));

 return 0;
}
