
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_page ;
typedef int fz_context ;
struct TYPE_2__ {int image; } ;
typedef TYPE_1__ cbz_page ;


 int fz_drop_image (int *,int ) ;

__attribute__((used)) static void
cbz_drop_page(fz_context *ctx, fz_page *page_)
{
 cbz_page *page = (cbz_page*)page_;
 fz_drop_image(ctx, page->image);
}
