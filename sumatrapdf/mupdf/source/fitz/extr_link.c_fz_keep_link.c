
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refs; } ;
typedef TYPE_1__ fz_link ;
typedef int fz_context ;


 TYPE_1__* fz_keep_imp (int *,TYPE_1__*,int *) ;

fz_link *
fz_keep_link(fz_context *ctx, fz_link *link)
{
 return fz_keep_imp(ctx, link, &link->refs);
}
