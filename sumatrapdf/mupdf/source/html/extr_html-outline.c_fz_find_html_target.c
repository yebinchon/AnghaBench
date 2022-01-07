
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ fz_html ;
typedef int fz_context ;


 float find_box_target (int ,char const*) ;

float
fz_find_html_target(fz_context *ctx, fz_html *html, const char *id)
{
 return find_box_target(html->root, id);
}
