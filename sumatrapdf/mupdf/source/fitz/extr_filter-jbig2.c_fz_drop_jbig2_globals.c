
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int storable; } ;
typedef TYPE_1__ fz_jbig2_globals ;
typedef int fz_context ;


 int fz_drop_storable (int *,int *) ;

void
fz_drop_jbig2_globals(fz_context *ctx, fz_jbig2_globals *globals)
{
 fz_drop_storable(ctx, &globals->storable);
}
