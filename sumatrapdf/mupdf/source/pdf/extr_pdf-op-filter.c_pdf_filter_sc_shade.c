
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_processor ;
typedef int pdf_filter_processor ;
typedef int fz_shade ;
typedef int fz_context ;
struct TYPE_5__ {scalar_t__ n; int * shd; int * pat; int name; } ;
struct TYPE_6__ {TYPE_1__ sc; } ;
struct TYPE_7__ {TYPE_2__ pending; } ;
typedef TYPE_3__ filter_gstate ;


 int PDF_NAME (int ) ;
 int Pattern ;
 int copy_resource (int *,int *,int ,char const*) ;
 int fz_strlcpy (int ,char const*,int) ;
 TYPE_3__* gstate_to_update (int *,int *) ;

__attribute__((used)) static void
pdf_filter_sc_shade(fz_context *ctx, pdf_processor *proc, const char *name, fz_shade *shade)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_gstate *gstate = gstate_to_update(ctx, p);
 fz_strlcpy(gstate->pending.sc.name, name, sizeof gstate->pending.sc.name);
 gstate->pending.sc.pat = ((void*)0);
 gstate->pending.sc.shd = shade;
 gstate->pending.sc.n = 0;
 copy_resource(ctx, p, PDF_NAME(Pattern), name);
}
