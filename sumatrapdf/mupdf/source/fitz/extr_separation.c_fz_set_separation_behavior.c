
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_separations; int* state; int controllable; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_separation_behavior ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int FZ_SEPARATION_DISABLED ;
 int FZ_SEPARATION_DISABLED_RENDER ;
 int fz_empty_store (int *) ;
 int fz_throw (int *,int ,char*) ;

void fz_set_separation_behavior(fz_context *ctx, fz_separations *sep, int separation, fz_separation_behavior beh)
{
 int shift;
 fz_separation_behavior old;

 if (!sep || separation < 0 || separation >= sep->num_separations)
  fz_throw(ctx, FZ_ERROR_GENERIC, "can't control non-existent separation");

 if (beh == FZ_SEPARATION_DISABLED && !sep->controllable)
  beh = FZ_SEPARATION_DISABLED_RENDER;

 shift = ((2*separation) & 31);
 separation >>= 4;

 old = (sep->state[separation]>>shift) & 3;

 if (old == (fz_separation_behavior)FZ_SEPARATION_DISABLED_RENDER)
  old = FZ_SEPARATION_DISABLED;


 if (old == beh)
  return;

 sep->state[separation] = (sep->state[separation] & ~(3<<shift)) | (beh<<shift);



 fz_empty_store(ctx);
}
