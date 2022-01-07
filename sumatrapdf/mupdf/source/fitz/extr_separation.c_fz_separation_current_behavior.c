
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_separations ;
typedef int fz_separation_behavior ;
typedef int fz_context ;


 int FZ_SEPARATION_DISABLED ;
 int FZ_SEPARATION_DISABLED_RENDER ;
 int fz_separation_current_behavior_internal (int *,int const*,int) ;

fz_separation_behavior fz_separation_current_behavior(fz_context *ctx, const fz_separations *sep, int separation)
{
 int beh = fz_separation_current_behavior_internal(ctx, sep, separation);

 if (beh == FZ_SEPARATION_DISABLED_RENDER)
  return FZ_SEPARATION_DISABLED;
 return beh;
}
