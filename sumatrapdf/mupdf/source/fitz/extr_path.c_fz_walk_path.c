
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int (* closepath ) (int *,void*) ;int (* lineto ) (int *,void*,float,float) ;int (* moveto ) (int *,void*,float,float) ;int (* rectto ) (int *,void*,float,float,float,float) ;int (* curveto ) (int *,void*,float,float,float,float,float,float) ;int (* quadto ) (int *,void*,float,float,float,float) ;int (* curvetoy ) (int *,void*,float,float,float,float) ;int (* curvetov ) (int *,void*,float,float,float,float) ;} ;
typedef TYPE_1__ fz_path_walker ;
struct TYPE_7__ {int packed; int cmd_len; float* coords; int* cmds; } ;
typedef TYPE_2__ fz_path ;
struct TYPE_8__ {int cmd_len; size_t coord_len; } ;
typedef TYPE_3__ fz_packed_path ;
typedef int fz_context ;
 int assert (int ) ;
 int stub1 (int *,void*,float,float,float,float,float,float) ;
 int stub10 (int *,void*,float,float,float,float,float,float) ;
 int stub11 (int *,void*) ;
 int stub12 (int *,void*,float,float) ;
 int stub13 (int *,void*) ;
 int stub14 (int *,void*,float,float) ;
 int stub15 (int *,void*) ;
 int stub16 (int *,void*,float,float) ;
 int stub17 (int *,void*) ;
 int stub18 (int *,void*,float,float) ;
 int stub19 (int *,void*) ;
 int stub2 (int *,void*) ;
 int stub20 (int *,void*,float,float) ;
 int stub21 (int *,void*) ;
 int stub22 (int *,void*,float,float,float,float) ;
 int stub23 (int *,void*,float,float) ;
 int stub24 (int *,void*,float,float) ;
 int stub25 (int *,void*,float,float) ;
 int stub26 (int *,void*,float,float) ;
 int stub27 (int *,void*) ;
 int stub3 (int *,void*,float,float,float,float) ;
 int stub4 (int *,void*,float,float,float,float,float,float) ;
 int stub5 (int *,void*) ;
 int stub6 (int *,void*,float,float,float,float) ;
 int stub7 (int *,void*,float,float,float,float,float,float) ;
 int stub8 (int *,void*) ;
 int stub9 (int *,void*,float,float,float,float) ;

void fz_walk_path(fz_context *ctx, const fz_path *path, const fz_path_walker *proc, void *arg)
{
 int i, k, cmd_len;
 float x, y, sx, sy;
 uint8_t *cmds;
 float *coords;

 switch (path->packed)
 {
 case 133:
 case 134:
  cmd_len = path->cmd_len;
  coords = path->coords;
  cmds = path->cmds;
  break;
 case 135:
  cmd_len = ((fz_packed_path *)path)->cmd_len;
  coords = (float *)&((fz_packed_path *)path)[1];
  cmds = (uint8_t *)&coords[((fz_packed_path *)path)->coord_len];
  break;
 default:
  assert("This never happens" == ((void*)0));
  return;
 }

 if (cmd_len == 0)
  return;

 for (k=0, i = 0; i < cmd_len; i++)
 {
  uint8_t cmd = cmds[i];

  switch (cmd)
  {
  case 149:
  case 148:
   proc->curveto(ctx, arg,
     coords[k],
     coords[k+1],
     coords[k+2],
     coords[k+3],
     x = coords[k+4],
     y = coords[k+5]);
   k += 6;
   if (cmd == 148)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 147:
  case 146:
   if (proc->curvetov)
    proc->curvetov(ctx, arg,
      coords[k],
      coords[k+1],
      x = coords[k+2],
      y = coords[k+3]);
   else
   {
    proc->curveto(ctx, arg,
      x,
      y,
      coords[k],
      coords[k+1],
      coords[k+2],
      coords[k+3]);
    x = coords[k+2];
    y = coords[k+3];
   }
   k += 4;
   if (cmd == 146)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 145:
  case 144:
   if (proc->curvetoy)
    proc->curvetoy(ctx, arg,
      coords[k],
      coords[k+1],
      x = coords[k+2],
      y = coords[k+3]);
   else
    proc->curveto(ctx, arg,
      coords[k],
      coords[k+1],
      coords[k+2],
      coords[k+3],
      x = coords[k+2],
      y = coords[k+3]);
   k += 4;
   if (cmd == 144)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 132:
  case 131:
   if (proc->quadto)
    proc->quadto(ctx, arg,
     coords[k],
     coords[k+1],
     x = coords[k+2],
     y = coords[k+3]);
   else
   {
    float c2x = coords[k] * 2;
    float c2y = coords[k+1] * 2;
    float c1x = (x + c2x) / 3;
    float c1y = (y + c2y) / 3;
    x = coords[k+2];
    y = coords[k+3];
    c2x = (c2x + x) / 3;
    c2y = (c2y + y) / 3;

    proc->curveto(ctx, arg,
     c1x,
     c1y,
     c2x,
     c2y,
     x,
     y);
   }
   k += 4;
   if (cmd == 131)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 137:
  case 136:
   proc->moveto(ctx, arg,
    x = coords[k],
    y = coords[k+1]);
   k += 2;
   sx = x;
   sy = y;
   if (cmd == 136)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 139:
  case 138:
   proc->lineto(ctx, arg,
    x = coords[k],
    y = coords[k+1]);
   k += 2;
   if (cmd == 138)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 141:
  case 140:
   proc->lineto(ctx, arg,
    x = coords[k],
    y);
   k += 1;
   if (cmd == 140)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 129:
  case 128:
   proc->lineto(ctx, arg,
    x,
    y = coords[k]);
   k += 1;
   if (cmd == 128)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 143:
  case 142:
   proc->lineto(ctx, arg,
    x,
    y);
   if (cmd == 142)
   {
    if (proc->closepath)
     proc->closepath(ctx, arg);
    x = sx;
    y = sy;
   }
   break;
  case 130:
   if (proc->rectto)
   {
    proc->rectto(ctx, arg,
      x = coords[k],
      y = coords[k+1],
      coords[k+2],
      coords[k+3]);
   }
   else
   {
    proc->moveto(ctx, arg,
     x = coords[k],
     y = coords[k+1]);
    proc->lineto(ctx, arg,
     coords[k+2],
     coords[k+1]);
    proc->lineto(ctx, arg,
     coords[k+2],
     coords[k+3]);
    proc->lineto(ctx, arg,
     coords[k],
     coords[k+3]);
    if (proc->closepath)
     proc->closepath(ctx, arg);
   }
   sx = x;
   sy = y;
   k += 4;
   break;
  }
 }
}
