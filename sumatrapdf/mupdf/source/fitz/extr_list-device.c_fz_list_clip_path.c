
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_context ;


 int FZ_CMD_CLIP_PATH ;
 int fz_append_display_node (int *,int *,int ,int,int *,int const*,int *,int *,int *,int *,int *,int *,int ) ;
 int fz_bound_path (int *,int const*,int *,int ) ;
 int fz_intersect_rect (int ,int ) ;

__attribute__((used)) static void
fz_list_clip_path(fz_context *ctx, fz_device *dev, const fz_path *path, int even_odd, fz_matrix ctm, fz_rect scissor)
{
 fz_rect rect = fz_bound_path(ctx, path, ((void*)0), ctm);
 rect = fz_intersect_rect(rect, scissor);
 fz_append_display_node(
  ctx,
  dev,
  FZ_CMD_CLIP_PATH,
  even_odd,
  &rect,
  path,
  ((void*)0),
  ((void*)0),
  ((void*)0),
  &ctm,
  ((void*)0),
  ((void*)0),
  0);
}
