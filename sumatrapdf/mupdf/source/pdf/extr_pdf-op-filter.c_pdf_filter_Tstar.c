
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_9__ {TYPE_5__* chain; int Tm_pending; TYPE_3__* gstate; int tos; } ;
typedef TYPE_4__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_10__ {int (* op_Tstar ) (int *,TYPE_5__*) ;} ;
struct TYPE_6__ {int leading; } ;
struct TYPE_7__ {TYPE_1__ text; } ;
struct TYPE_8__ {TYPE_2__ pending; } ;


 int pdf_tos_newline (int *,int ) ;
 int stub1 (int *,TYPE_5__*) ;

__attribute__((used)) static void
pdf_filter_Tstar(fz_context *ctx, pdf_processor *proc)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 pdf_tos_newline(&p->tos, p->gstate->pending.text.leading);



 if (!p->Tm_pending && p->chain->op_Tstar)
  p->chain->op_Tstar(ctx, p->chain);
}
