
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ fz_html ;
typedef int fz_context ;


 size_t fz_pool_size (int *,int ) ;

__attribute__((used)) static size_t
fz_html_size(fz_context *ctx, fz_html *html)
{
 return html ? fz_pool_size(ctx, html->pool) : 0;
}
