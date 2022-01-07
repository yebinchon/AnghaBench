
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int storable; } ;
typedef TYPE_1__ fz_shade ;
typedef int fz_context ;


 int fz_drop_storable (int *,int *) ;

void
fz_drop_shade(fz_context *ctx, fz_shade *shade)
{
 fz_drop_storable(ctx, &shade->storable);
}
