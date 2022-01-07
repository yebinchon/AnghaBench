
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int direction; int vertical; } ;
typedef TYPE_1__ fz_transition ;
typedef int fz_pixmap ;
typedef int fz_context ;





 int blind_horiz (int *,int *,int *,int) ;
 int blind_vertical (int *,int *,int *,int) ;
 int fade (int *,int *,int *,int) ;
 int wipe_lr (int *,int *,int *,int) ;
 int wipe_tb (int *,int *,int *,int) ;

int fz_generate_transition(fz_context *ctx, fz_pixmap *tpix, fz_pixmap *opix, fz_pixmap *npix, int time, fz_transition *trans)
{
 switch (trans->type)
 {
 default:
 case 129:
  return fade(tpix, opix, npix, time);
 case 130:
  if (trans->vertical)
   return blind_vertical(tpix, opix, npix, time);
  else
   return blind_horiz(tpix, opix, npix, time);
 case 128:
  switch (((trans->direction + 45 + 360) % 360) / 90)
  {
  default:
  case 0: return wipe_lr(tpix, opix, npix, time);
  case 1: return wipe_tb(tpix, npix, opix, 256-time);
  case 2: return wipe_lr(tpix, npix, opix, 256-time);
  case 3: return wipe_tb(tpix, opix, npix, time);
  }
 }
}
