
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int page_count; } ;
typedef TYPE_1__ img_document ;
typedef int fz_document ;
typedef int fz_context ;



__attribute__((used)) static int
img_count_pages(fz_context *ctx, fz_document *doc_, int chapter)
{
 img_document *doc = (img_document*)doc_;
 return doc->page_count;
}
