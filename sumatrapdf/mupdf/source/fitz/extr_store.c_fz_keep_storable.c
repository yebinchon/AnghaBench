
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; } ;
typedef TYPE_1__ fz_storable ;
typedef int fz_context ;


 void* fz_keep_imp (int *,TYPE_1__*,int *) ;

void *
fz_keep_storable(fz_context *ctx, const fz_storable *sc)
{


 fz_storable *s = (fz_storable *)sc;

 return fz_keep_imp(ctx, s, &s->refs);
}
