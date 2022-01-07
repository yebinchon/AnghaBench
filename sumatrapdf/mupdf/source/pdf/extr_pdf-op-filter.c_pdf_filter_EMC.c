
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_7__ {TYPE_3__* chain; TYPE_5__* current_tags; TYPE_5__* pending_tags; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_9__ {int raw; } ;
struct TYPE_8__ {int (* op_EMC ) (int *,TYPE_3__*) ;} ;


 int PDF_NAME (int ) ;
 int Properties ;
 int copy_resource (int *,TYPE_1__*,int ,int ) ;
 int pdf_to_name (int *,int ) ;
 int pop_tag (int *,TYPE_1__*,TYPE_5__**) ;
 int stub1 (int *,TYPE_3__*) ;
 int update_mcid (int *,TYPE_1__*) ;

__attribute__((used)) static void
pdf_filter_EMC(fz_context *ctx, pdf_processor *proc)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;



 if (p->pending_tags != ((void*)0))
  pop_tag(ctx, p, &p->pending_tags);
 else if (p->current_tags)
 {
  update_mcid(ctx, p);
  copy_resource(ctx, p, PDF_NAME(Properties), pdf_to_name(ctx, p->current_tags->raw));
  pop_tag(ctx, p, &p->current_tags);
  if (p->chain->op_EMC)
   p->chain->op_EMC(ctx, p->chain);
 }
}
