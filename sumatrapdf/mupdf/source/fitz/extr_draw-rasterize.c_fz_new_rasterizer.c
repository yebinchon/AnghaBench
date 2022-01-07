
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int bits; } ;
struct TYPE_11__ {TYPE_3__ aa; } ;
typedef TYPE_1__ fz_rasterizer ;
struct TYPE_12__ {TYPE_3__ aa; } ;
typedef TYPE_2__ fz_context ;
typedef TYPE_3__ fz_aa_context ;


 int AA_BITS ;
 int FZ_EDGEBUFFER_ANY_PART_OF_PIXEL ;
 int FZ_EDGEBUFFER_CENTER_OF_PIXEL ;
 TYPE_1__* fz_new_edgebuffer (TYPE_2__*,int ) ;
 TYPE_1__* fz_new_gel (TYPE_2__*) ;

fz_rasterizer *fz_new_rasterizer(fz_context *ctx, const fz_aa_context *aa)
{
 fz_rasterizer *r;
 int bits;




 if (aa == ((void*)0))
  aa = &ctx->aa;
 bits = aa->bits;

 if (bits == 10)
  r = fz_new_edgebuffer(ctx, FZ_EDGEBUFFER_ANY_PART_OF_PIXEL);
 else if (bits == 9)
  r = fz_new_edgebuffer(ctx, FZ_EDGEBUFFER_CENTER_OF_PIXEL);
 else
  r = fz_new_gel(ctx);

 r->aa = *aa;


 return r;
}
