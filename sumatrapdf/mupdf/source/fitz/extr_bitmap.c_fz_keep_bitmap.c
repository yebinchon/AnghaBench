
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_6__ {int refs; } ;
typedef TYPE_1__ fz_bitmap ;


 TYPE_1__* fz_keep_imp (int *,TYPE_1__*,int *) ;

fz_bitmap *
fz_keep_bitmap(fz_context *ctx, fz_bitmap *bit)
{
 return fz_keep_imp(ctx, bit, &bit->refs);
}
