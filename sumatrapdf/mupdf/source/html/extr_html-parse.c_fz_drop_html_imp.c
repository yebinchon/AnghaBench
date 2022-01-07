
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_storable ;
struct TYPE_2__ {int pool; int root; } ;
typedef TYPE_1__ fz_html ;
typedef int fz_context ;


 int fz_drop_html_box (int *,int ) ;
 int fz_drop_pool (int *,int ) ;

__attribute__((used)) static void fz_drop_html_imp(fz_context *ctx, fz_storable *stor)
{
 fz_html *html = (fz_html *)stor;
 fz_drop_html_box(ctx, html->root);
 fz_drop_pool(ctx, html->pool);
}
