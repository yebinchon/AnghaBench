
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_13__ {TYPE_5__* chain; int doc; int opaque; int (* after_text ) (int *,int ,int ,TYPE_5__*,int ) ;TYPE_3__* gstate; scalar_t__ BT_pending; } ;
typedef TYPE_4__ pdf_filter_processor ;
typedef int fz_matrix ;
typedef int fz_context ;
struct TYPE_14__ {int (* op_Q ) (int *,TYPE_5__*) ;int (* op_q ) (int *,TYPE_5__*) ;int (* op_ET ) (int *,TYPE_5__*) ;} ;
struct TYPE_11__ {int ctm; } ;
struct TYPE_10__ {int ctm; } ;
struct TYPE_12__ {TYPE_2__ sent; TYPE_1__ pending; } ;


 int filter_flush (int *,TYPE_4__*,int ) ;
 int fz_concat (int ,int ) ;
 int stub1 (int *,TYPE_5__*) ;
 int stub2 (int *,TYPE_5__*) ;
 int stub3 (int *,int ,int ,TYPE_5__*,int ) ;
 int stub4 (int *,TYPE_5__*) ;

__attribute__((used)) static void
pdf_filter_ET(fz_context *ctx, pdf_processor *proc)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;

 if (!p->BT_pending)
 {
  filter_flush(ctx, p, 0);
  if (p->chain->op_ET)
   p->chain->op_ET(ctx, p->chain);
 }
 p->BT_pending = 0;
 if (p->after_text)
 {
  fz_matrix ctm = fz_concat(p->gstate->pending.ctm, p->gstate->sent.ctm);
  if (p->chain->op_q)
   p->chain->op_q(ctx, p->chain);
  p->after_text(ctx, p->opaque, p->doc, p->chain, ctm);
  if (p->chain->op_Q)
   p->chain->op_Q(ctx, p->chain);
 }
}
