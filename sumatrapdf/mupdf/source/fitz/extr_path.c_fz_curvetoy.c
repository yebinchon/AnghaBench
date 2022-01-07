
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {float x; float y; } ;
struct TYPE_9__ {scalar_t__ cmd_len; TYPE_1__ current; scalar_t__ packed; } ;
typedef TYPE_2__ fz_path ;
typedef int fz_context ;


 int FZ_CURVETOY ;
 int FZ_ERROR_GENERIC ;
 scalar_t__ FZ_MOVETO ;
 scalar_t__ LAST_CMD (TYPE_2__*) ;
 int fz_lineto (int *,TYPE_2__*,float,float) ;
 int fz_throw (int *,int ,char*) ;
 int fz_warn (int *,char*) ;
 int push_cmd (int *,TYPE_2__*,int ) ;
 int push_coord (int *,TYPE_2__*,float,float) ;

void
fz_curvetoy(fz_context *ctx, fz_path *path, float x1, float y1, float x3, float y3)
{
 float x0, y0;

 if (path->packed)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot modify a packed path");

 x0 = path->current.x;
 y0 = path->current.y;

 if (path->cmd_len == 0)
 {
  fz_warn(ctx, "curveto with no current point");
  return;
 }


 if (x1 == x3 && y1 == y3)
 {

  if (x0 == x1 && y0 == y1 && LAST_CMD(path) != FZ_MOVETO)
   return;

  fz_lineto(ctx, path, x3, y3);
 }

 push_cmd(ctx, path, FZ_CURVETOY);
 push_coord(ctx, path, x1, y1);
 push_coord(ctx, path, x3, y3);
}
