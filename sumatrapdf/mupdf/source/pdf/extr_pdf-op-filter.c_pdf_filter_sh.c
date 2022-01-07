
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_5__ {TYPE_2__* chain; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_shade ;
typedef int fz_context ;
struct TYPE_6__ {int (* op_sh ) (int *,TYPE_2__*,char const*,int *) ;} ;


 int FLUSH_ALL ;
 int PDF_NAME (int ) ;
 int Shading ;
 int copy_resource (int *,TYPE_1__*,int ,char const*) ;
 int filter_flush (int *,TYPE_1__*,int ) ;
 int stub1 (int *,TYPE_2__*,char const*,int *) ;

__attribute__((used)) static void
pdf_filter_sh(fz_context *ctx, pdf_processor *proc, const char *name, fz_shade *shade)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, FLUSH_ALL);
 if (p->chain->op_sh)
  p->chain->op_sh(ctx, p->chain, name, shade);
 copy_resource(ctx, p, PDF_NAME(Shading), name);
}
