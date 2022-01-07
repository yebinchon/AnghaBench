
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int contents; int resources; } ;
typedef TYPE_1__ pdf_pattern ;
typedef int fz_storable ;
typedef int fz_context ;


 int fz_free (int *,TYPE_1__*) ;
 int pdf_drop_obj (int *,int ) ;

__attribute__((used)) static void
pdf_drop_pattern_imp(fz_context *ctx, fz_storable *pat_)
{
 pdf_pattern *pat = (pdf_pattern *)pat_;
 pdf_drop_obj(ctx, pat->resources);
 pdf_drop_obj(ctx, pat->contents);
 fz_free(ctx, pat);
}
