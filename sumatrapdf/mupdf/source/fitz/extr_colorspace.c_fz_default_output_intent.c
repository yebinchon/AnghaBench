
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * oi; } ;
typedef TYPE_1__ fz_default_colorspaces ;
typedef int fz_context ;
typedef int fz_colorspace ;



fz_colorspace *fz_default_output_intent(fz_context *ctx, const fz_default_colorspaces *default_cs)
{
 return default_cs ? default_cs->oi : ((void*)0);
}
