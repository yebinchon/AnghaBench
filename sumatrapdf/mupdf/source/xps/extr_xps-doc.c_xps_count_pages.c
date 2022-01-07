
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_count; } ;
typedef TYPE_1__ xps_document ;
typedef int fz_document ;
typedef int fz_context ;



int
xps_count_pages(fz_context *ctx, fz_document *doc_, int chapter)
{
 xps_document *doc = (xps_document*)doc_;
 return doc->page_count;
}
