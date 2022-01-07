
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {char const** colorant; } ;
struct TYPE_6__ {TYPE_1__ separation; } ;
struct TYPE_7__ {int n; int type; TYPE_2__ u; } ;
typedef TYPE_3__ fz_colorspace ;
 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;

const char *fz_colorspace_colorant(fz_context *ctx, fz_colorspace *cs, int i)
{
 if (!cs || i < 0 || i >= cs->n)
  fz_throw(ctx, FZ_ERROR_GENERIC, "Colorant out of range");
 switch (cs->type)
 {
 case 130:
  return "None";
 case 133:
  return "Gray";
 case 129:
  if (i == 0) return "Red";
  if (i == 1) return "Green";
  if (i == 2) return "Blue";
  break;
 case 135:
  if (i == 0) return "Blue";
  if (i == 1) return "Green";
  if (i == 2) return "Red";
  break;
 case 134:
  if (i == 0) return "Cyan";
  if (i == 1) return "Magenta";
  if (i == 2) return "Yellow";
  if (i == 3) return "Black";
  break;
 case 131:
  if (i == 0) return "L*";
  if (i == 1) return "a*";
  if (i == 2) return "b*";
  break;
 case 132:
  return "Index";
 case 128:
  return cs->u.separation.colorant[i];
 }
 return "None";
}
