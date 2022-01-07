
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_3__ {int key_storable; } ;
typedef TYPE_1__ fz_colorspace ;


 int fz_drop_key_storable (int *,int *) ;

void
fz_drop_colorspace(fz_context *ctx, fz_colorspace *cs)
{
 fz_drop_key_storable(ctx, &cs->key_storable);
}
