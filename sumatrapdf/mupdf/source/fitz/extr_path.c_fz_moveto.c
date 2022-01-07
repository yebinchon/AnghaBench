
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float x; float y; } ;
struct TYPE_8__ {scalar_t__ cmd_len; float* coords; int coord_len; TYPE_1__ current; TYPE_1__ begin; scalar_t__ packed; } ;
typedef TYPE_2__ fz_path ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ FZ_MOVETO ;
 scalar_t__ LAST_CMD (TYPE_2__*) ;
 int fz_throw (int *,int ,char*) ;
 int push_cmd (int *,TYPE_2__*,scalar_t__) ;
 int push_coord (int *,TYPE_2__*,float,float) ;

void
fz_moveto(fz_context *ctx, fz_path *path, float x, float y)
{
 if (path->packed)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot modify a packed path");

 if (path->cmd_len > 0 && LAST_CMD(path) == FZ_MOVETO)
 {

  path->coords[path->coord_len-2] = x;
  path->coords[path->coord_len-1] = y;
  path->current.x = x;
  path->current.y = y;
  path->begin = path->current;
  return;
 }

 push_cmd(ctx, path, FZ_MOVETO);
 push_coord(ctx, path, x, y);

 path->begin = path->current;
}
