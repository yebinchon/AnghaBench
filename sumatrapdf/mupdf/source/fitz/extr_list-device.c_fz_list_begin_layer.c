
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_device ;
typedef int fz_context ;


 int FZ_CMD_BEGIN_LAYER ;
 int fz_append_display_node (int *,int *,int ,int ,int *,int *,int *,int *,int *,int *,int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
fz_list_begin_layer(fz_context *ctx, fz_device *dev, const char *layer_name)
{
 fz_append_display_node(
  ctx,
  dev,
  FZ_CMD_BEGIN_LAYER,
  0,
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  ((void*)0),
  layer_name,
  1+strlen(layer_name));
}
