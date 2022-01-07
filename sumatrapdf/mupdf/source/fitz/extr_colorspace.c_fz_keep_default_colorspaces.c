
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refs; } ;
typedef TYPE_1__ fz_default_colorspaces ;
typedef int fz_context ;


 TYPE_1__* fz_keep_imp (int *,TYPE_1__*,int *) ;

fz_default_colorspaces *fz_keep_default_colorspaces(fz_context *ctx, fz_default_colorspaces *default_cs)
{
 return fz_keep_imp(ctx, default_cs, &default_cs->refs);
}
