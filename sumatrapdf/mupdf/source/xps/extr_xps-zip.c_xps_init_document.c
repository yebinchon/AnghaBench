
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refs; int lookup_metadata; int load_page; int count_pages; int resolve_link; int load_outline; int drop_document; } ;
struct TYPE_5__ {TYPE_1__ super; } ;
typedef TYPE_2__ xps_document ;
typedef int fz_context ;


 int xps_count_pages ;
 int xps_drop_document ;
 int xps_load_outline ;
 int xps_load_page ;
 int xps_lookup_link_target ;
 int xps_lookup_metadata ;

__attribute__((used)) static void
xps_init_document(fz_context *ctx, xps_document *doc)
{
 doc->super.refs = 1;
 doc->super.drop_document = xps_drop_document;
 doc->super.load_outline = xps_load_outline;
 doc->super.resolve_link = xps_lookup_link_target;
 doc->super.count_pages = xps_count_pages;
 doc->super.load_page = xps_load_page;
 doc->super.lookup_metadata = xps_lookup_metadata;
}
