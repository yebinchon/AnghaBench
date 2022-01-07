
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_4__* gstate; } ;
typedef TYPE_3__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_7__ {float word_space; float scale; } ;
struct TYPE_8__ {TYPE_1__ text; } ;
struct TYPE_10__ {TYPE_2__ pending; } ;
typedef TYPE_4__ filter_gstate ;


 int adjust_text (int *,TYPE_3__*,float,float) ;

__attribute__((used)) static void
adjust_for_removed_space(fz_context *ctx, pdf_filter_processor *p)
{
 filter_gstate *gstate = p->gstate;
 float adj = gstate->pending.text.word_space;
 adjust_text(ctx, p, adj * gstate->pending.text.scale, adj);
}
