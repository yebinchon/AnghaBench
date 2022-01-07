
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_device ;
typedef int fz_context ;


 int FZ_CMD_END_MASK ;
 int fz_append_display_node (int *,int *,int ,int ,int *,int *,int *,int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static void
fz_list_end_mask(fz_context *ctx, fz_device *dev)
{
 fz_append_display_node(
  ctx,
  dev,
  FZ_CMD_END_MASK,
  0,
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  0);
}
