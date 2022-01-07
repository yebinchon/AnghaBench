
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int storable; } ;
typedef TYPE_1__ fz_key_storable ;
typedef int fz_context ;


 void* fz_keep_storable (int *,int *) ;

void *fz_keep_key_storable(fz_context *ctx, const fz_key_storable *sc)
{
 return fz_keep_storable(ctx, &sc->storable);
}
