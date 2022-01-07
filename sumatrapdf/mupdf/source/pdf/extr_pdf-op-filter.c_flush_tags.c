
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* prev; int tag; int cooked; int raw; scalar_t__ bdc; } ;
typedef TYPE_1__ tag_record ;
struct TYPE_8__ {TYPE_1__* current_tags; TYPE_3__* chain; } ;
typedef TYPE_2__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_9__ {int (* op_BMC ) (int *,TYPE_3__*,int ) ;int (* op_BDC ) (int *,TYPE_3__*,int ,int ,int ) ;} ;


 int stub1 (int *,TYPE_3__*,int ,int ,int ) ;
 int stub2 (int *,TYPE_3__*,int ) ;

__attribute__((used)) static void flush_tags(fz_context *ctx, pdf_filter_processor *p, tag_record **tags)
{
 tag_record *tag = *tags;

 if (tag == ((void*)0))
  return;
 if (tag->prev)
  flush_tags(ctx, p, &tag->prev);
 if (tag->bdc)
 {
  if (p->chain->op_BDC)
   p->chain->op_BDC(ctx, p->chain, tag->tag, tag->raw, tag->cooked);
 }
 else if (p->chain->op_BMC)
  p->chain->op_BMC(ctx, p->chain, tag->tag);
 tag->prev = p->current_tags;
 p->current_tags = tag;
 *tags = ((void*)0);
}
