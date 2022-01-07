
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int xml; TYPE_1__* doc; } ;
typedef TYPE_2__ xps_page ;
typedef int fz_page ;
typedef int fz_context ;
struct TYPE_3__ {int super; } ;


 int fz_drop_document (int *,int *) ;
 int fz_drop_xml (int *,int ) ;

__attribute__((used)) static void
xps_drop_page_imp(fz_context *ctx, fz_page *page_)
{
 xps_page *page = (xps_page*)page_;
 fz_drop_document(ctx, &page->doc->super);
 fz_drop_xml(ctx, page->xml);
}
