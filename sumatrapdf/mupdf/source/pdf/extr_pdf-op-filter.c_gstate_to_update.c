
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* gstate; TYPE_3__* chain; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_8__ {int pushed; int * next; } ;
typedef TYPE_2__ filter_gstate ;
struct TYPE_9__ {int (* op_q ) (int *,TYPE_3__*) ;} ;


 int filter_push (int *,TYPE_1__*) ;
 int stub1 (int *,TYPE_3__*) ;

__attribute__((used)) static filter_gstate *
gstate_to_update(fz_context *ctx, pdf_filter_processor *p)
{
 filter_gstate *gstate = p->gstate;


 if (gstate->next != ((void*)0))
  return gstate;


 filter_push(ctx, p);
 gstate = p->gstate;
 gstate->pushed = 1;
 if (p->chain->op_q)
  p->chain->op_q(ctx, p->chain);

 return p->gstate;
}
