
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_4__ {TYPE_2__* chain; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_5__ {int (* op_f ) (int *,TYPE_2__*) ;} ;


 int FLUSH_FILL ;
 int filter_flush (int *,TYPE_1__*,int ) ;
 int stub1 (int *,TYPE_2__*) ;

__attribute__((used)) static void
pdf_filter_f(fz_context *ctx, pdf_processor *proc)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, FLUSH_FILL);
 if (p->chain->op_f)
  p->chain->op_f(ctx, p->chain);
}
