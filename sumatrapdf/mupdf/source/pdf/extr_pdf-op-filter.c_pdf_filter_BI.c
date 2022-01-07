
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdf_processor ;
struct TYPE_4__ {TYPE_2__* chain; } ;
typedef TYPE_1__ pdf_filter_processor ;
typedef int fz_image ;
typedef int fz_context ;
struct TYPE_5__ {int (* op_BI ) (int *,TYPE_2__*,int *,char const*) ;} ;


 int FLUSH_ALL ;
 int filter_flush (int *,TYPE_1__*,int ) ;
 int stub1 (int *,TYPE_2__*,int *,char const*) ;

__attribute__((used)) static void
pdf_filter_BI(fz_context *ctx, pdf_processor *proc, fz_image *img, const char *colorspace)
{
 pdf_filter_processor *p = (pdf_filter_processor*)proc;
 filter_flush(ctx, p, FLUSH_ALL);
 if (p->chain->op_BI)
  p->chain->op_BI(ctx, p->chain, img, colorspace);
}
