
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
struct TYPE_5__ {int (* op_m ) (int *,TYPE_2__*,float,float) ;} ;


 int FLUSH_CTM ;
 int filter_flush (int *,TYPE_1__*,int ) ;
 int stub1 (int *,TYPE_2__*,float,float) ;

__attribute__((used)) static void
pdf_filter_m(fz_context *ctx, pdf_processor *proc, float x, float y)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, FLUSH_CTM);
 if (p->chain->op_m)
  p->chain->op_m(ctx, p->chain, x, y);
}
