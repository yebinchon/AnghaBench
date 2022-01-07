
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_processor ;
typedef int pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_5__ {int linecap; } ;
struct TYPE_6__ {TYPE_1__ stroke; } ;
struct TYPE_7__ {TYPE_2__ pending; } ;
typedef TYPE_3__ filter_gstate ;


 TYPE_3__* gstate_to_update (int *,int *) ;

__attribute__((used)) static void
pdf_filter_J(fz_context *ctx, pdf_processor *proc, int linecap)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_gstate *gstate = gstate_to_update(ctx, p);
 gstate->pending.stroke.linecap = linecap;
}
