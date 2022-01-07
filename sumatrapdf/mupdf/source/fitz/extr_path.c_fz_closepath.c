
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int cmd_len; int* cmds; int begin; int current; scalar_t__ packed; } ;
typedef TYPE_1__ fz_path ;
typedef int fz_context ;
 int FZ_ERROR_GENERIC ;
 int LAST_CMD (TYPE_1__*) ;
 int fz_throw (int *,int ,char*) ;
 int fz_warn (int *,char*) ;

void
fz_closepath(fz_context *ctx, fz_path *path)
{
 uint8_t rep;

 if (path->packed)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Cannot modify a packed path");

 if (path->cmd_len == 0)
 {
  fz_warn(ctx, "closepath with no current point");
  return;
 }

 switch(LAST_CMD(path))
 {
 case 134:
  rep = 133;
  break;
 case 136:
  rep = 135;
  break;
 case 140:
  rep = 139;
  break;
 case 146:
  rep = 145;
  break;
 case 144:
  rep = 143;
  break;
 case 142:
  rep = 141;
  break;
 case 138:
  rep = 137;
  break;
 case 129:
  rep = 128;
  break;
 case 132:
  rep = 131;
  break;
 case 130:

  return;
 case 133:
 case 135:
 case 139:
 case 145:
 case 143:
 case 141:
 case 137:
 case 128:
 case 131:

  return;
 default:
 case 0:

  return;
 }

 path->cmds[path->cmd_len-1] = rep;

 path->current = path->begin;
}
