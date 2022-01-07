
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_device ;
typedef int fz_context ;


 int FZ_CMD_RENDER_FLAGS ;
 int FZ_DEVFLAG_GRIDFIT_AS_TILED ;
 int assert (int ) ;
 int fz_append_display_node (int *,int *,int ,int,int *,int *,int *,int *,int *,int *,int *,int *,int ) ;

__attribute__((used)) static void
fz_list_render_flags(fz_context *ctx, fz_device *dev, int set, int clear)
{
 int flags;


 if (set == FZ_DEVFLAG_GRIDFIT_AS_TILED && clear == 0)
  flags = 1;
 else if (set == 0 && clear == FZ_DEVFLAG_GRIDFIT_AS_TILED)
  flags = 0;
 else
 {
  assert("Unsupported flags combination" == ((void*)0));
  return;
 }
 fz_append_display_node(
  ctx,
  dev,
  FZ_CMD_RENDER_FLAGS,
  flags,
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
