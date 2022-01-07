
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_9__ {TYPE_3__* gstate; } ;
typedef TYPE_4__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_6__ {float scale; } ;
struct TYPE_7__ {TYPE_1__ text; } ;
struct TYPE_8__ {TYPE_2__ pending; } ;


 int filter_flush (int *,TYPE_4__*,int ) ;

__attribute__((used)) static void
pdf_filter_Tz(fz_context *ctx, pdf_processor *proc, float scale)
{


 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, 0);
 p->gstate->pending.text.scale = scale / 100;
}
