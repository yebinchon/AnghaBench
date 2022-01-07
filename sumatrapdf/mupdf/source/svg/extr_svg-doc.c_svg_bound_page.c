
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* doc; } ;
typedef TYPE_1__ svg_page ;
struct TYPE_5__ {int height; int width; int root; } ;
typedef TYPE_2__ svg_document ;
typedef int fz_rect ;
typedef int fz_page ;
typedef int fz_context ;


 int fz_make_rect (int ,int ,int ,int ) ;
 int svg_parse_document_bounds (int *,TYPE_2__*,int ) ;

__attribute__((used)) static fz_rect
svg_bound_page(fz_context *ctx, fz_page *page_)
{
 svg_page *page = (svg_page*)page_;
 svg_document *doc = page->doc;

 svg_parse_document_bounds(ctx, doc, doc->root);

 return fz_make_rect(0, 0, doc->width, doc->height);
}
