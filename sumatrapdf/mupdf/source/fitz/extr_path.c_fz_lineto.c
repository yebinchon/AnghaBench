
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


 int FZ_DEGENLINETO ;
 int FZ_ERROR_GENERIC ;
 int FZ_HORIZTO ;
 int FZ_LINETO ;
 scalar_t__ FZ_MOVETO ;
 int FZ_VERTTO ;
 scalar_t__ LAST_CMD (TYPE_2__*) ;
 int fz_throw (int *,int ,char*) ;
 int fz_warn (int *,char*) ;
 int push_cmd (int *,TYPE_2__*,int ) ;
 int push_coord (int *,TYPE_2__*,float,float) ;
 int push_ord (int *,TYPE_2__*,float,int) ;

void
fz_lineto(fz_context *ctx, fz_path *path, float x, float y)
{
 float x0, y0;

 if (path->packed)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot modify a packed path");

 x0 = path->current.x;
 y0 = path->current.y;

 if (path->cmd_len == 0)
 {
  fz_warn(ctx, "lineto with no current point");
  return;
 }


 if (LAST_CMD(path) != FZ_MOVETO && x0 == x && y0 == y)
  return;

 if (x0 == x)
 {
  if (y0 == y)
  {
   if (LAST_CMD(path) != FZ_MOVETO)
    return;
   push_cmd(ctx, path, FZ_DEGENLINETO);
  }
  else
  {
   push_cmd(ctx, path, FZ_VERTTO);
   push_ord(ctx, path, y, 0);
  }
 }
 else if (y0 == y)
 {
  push_cmd(ctx, path, FZ_HORIZTO);
  push_ord(ctx, path, x, 1);
 }
 else
 {
  push_cmd(ctx, path, FZ_LINETO);
  push_coord(ctx, path, x, y);
 }
}
