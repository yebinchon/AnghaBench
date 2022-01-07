
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_5__ {TYPE_2__* opaque; } ;
typedef TYPE_1__ fz_color_converter ;
struct TYPE_6__ {int base; int hash; } ;
typedef TYPE_2__ fz_cached_color_converter ;


 int fz_drop_color_converter (int *,int *) ;
 int fz_drop_hash_table (int *,int ) ;
 int fz_free (int *,TYPE_2__*) ;

void fz_fin_cached_color_converter(fz_context *ctx, fz_color_converter *cc_)
{
 fz_cached_color_converter *cc;
 if (cc_ == ((void*)0))
  return;
 cc = cc_->opaque;
 if (cc == ((void*)0))
  return;
 cc_->opaque = ((void*)0);
 fz_drop_hash_table(ctx, cc->hash);
 fz_drop_color_converter(ctx, &cc->base);
 fz_free(ctx, cc);
}
