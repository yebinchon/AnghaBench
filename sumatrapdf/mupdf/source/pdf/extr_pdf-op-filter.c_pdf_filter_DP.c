
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_processor ;
typedef int pdf_obj ;
struct TYPE_4__ {TYPE_2__* chain; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_5__ {int (* op_DP ) (int *,TYPE_2__*,char const*,int *,int *) ;} ;


 int filter_flush (int *,TYPE_1__*,int ) ;
 int stub1 (int *,TYPE_2__*,char const*,int *,int *) ;

__attribute__((used)) static void
pdf_filter_DP(fz_context *ctx, pdf_processor *proc, const char *tag, pdf_obj *raw, pdf_obj *cooked)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, 0);
 if (p->chain->op_DP)
  p->chain->op_DP(ctx, p->chain, tag, raw, cooked);
}
