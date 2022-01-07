
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_3__ {TYPE_2__* chain; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_4__ {int (* op_gs_BM ) (int *,TYPE_2__*,char const*) ;} ;


 int stub1 (int *,TYPE_2__*,char const*) ;

__attribute__((used)) static void
pdf_filter_gs_BM(fz_context *ctx, pdf_processor *proc, const char *blendmode)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 if (p->chain->op_gs_BM)
  p->chain->op_gs_BM(ctx, p->chain, blendmode);
}
