
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int storable; } ;
typedef TYPE_1__ pdf_pattern ;
typedef int fz_context ;


 TYPE_1__* fz_keep_storable (int *,int *) ;

pdf_pattern *
pdf_keep_pattern(fz_context *ctx, pdf_pattern *pat)
{
 return fz_keep_storable(ctx, &pat->storable);
}
