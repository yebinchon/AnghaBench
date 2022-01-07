
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* doc; } ;
typedef TYPE_1__ svg_page ;
struct TYPE_5__ {int root; } ;
typedef TYPE_2__ svg_document ;
typedef int fz_page ;
typedef int fz_matrix ;
typedef int fz_device ;
typedef int fz_cookie ;
typedef int fz_context ;


 int svg_run_document (int *,TYPE_2__*,int ,int *,int ) ;

__attribute__((used)) static void
svg_run_page(fz_context *ctx, fz_page *page_, fz_device *dev, fz_matrix ctm, fz_cookie *cookie)
{
 svg_page *page = (svg_page*)page_;
 svg_document *doc = page->doc;
 svg_run_document(ctx, doc, doc->root, dev, ctm);
}
