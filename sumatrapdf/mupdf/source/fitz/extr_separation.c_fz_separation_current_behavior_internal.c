
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_separations; } ;
typedef TYPE_1__ fz_separations ;
typedef int fz_separation_behavior ;
typedef int fz_context ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int sep_state (TYPE_1__ const*,int) ;

fz_separation_behavior fz_separation_current_behavior_internal(fz_context *ctx, const fz_separations *sep, int separation)
{
 if (!sep || separation < 0 || separation >= sep->num_separations)
  fz_throw(ctx, FZ_ERROR_GENERIC, "can't disable non-existent separation");

 return sep_state(sep, separation);
}
