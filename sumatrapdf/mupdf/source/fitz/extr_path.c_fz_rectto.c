
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ cmd_len; int coord_len; int begin; int current; scalar_t__ packed; } ;
typedef TYPE_1__ fz_path ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 scalar_t__ FZ_MOVETO ;
 int FZ_RECTTO ;
 scalar_t__ LAST_CMD (TYPE_1__*) ;
 int fz_throw (int *,int ,char*) ;
 int push_cmd (int *,TYPE_1__*,int ) ;
 int push_coord (int *,TYPE_1__*,float,float) ;

void
fz_rectto(fz_context *ctx, fz_path *path, float x1, float y1, float x2, float y2)
{
 if (path->packed)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot modify a packed path");

 if (path->cmd_len > 0 && LAST_CMD(path) == FZ_MOVETO)
 {

  path->coord_len -= 2;
  path->cmd_len--;
 }

 push_cmd(ctx, path, FZ_RECTTO);
 push_coord(ctx, path, x1, y1);
 push_coord(ctx, path, x2, y2);

 path->current = path->begin;
}
