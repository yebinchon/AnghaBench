
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_processor ;
typedef int pdf_obj ;
struct TYPE_5__ {TYPE_2__* chain; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_context ;
struct TYPE_6__ {int (* op_gs_begin ) (int *,TYPE_2__*,char const*,int *) ;} ;


 int ExtGState ;
 int FLUSH_ALL ;
 int PDF_NAME (int ) ;
 int copy_resource (int *,TYPE_1__*,int ,char const*) ;
 int filter_flush (int *,TYPE_1__*,int ) ;
 int stub1 (int *,TYPE_2__*,char const*,int *) ;

__attribute__((used)) static void
pdf_filter_gs_begin(fz_context *ctx, pdf_processor *proc, const char *name, pdf_obj *extgstate)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, FLUSH_ALL);
 if (p->chain->op_gs_begin)
  p->chain->op_gs_begin(ctx, p->chain, name, extgstate);
 copy_resource(ctx, p, PDF_NAME(ExtGState), name);
}
