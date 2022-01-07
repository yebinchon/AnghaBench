
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdf_widget ;
struct TYPE_3__ {int * widgets; } ;
typedef TYPE_1__ pdf_page ;
typedef int fz_context ;



pdf_widget *pdf_first_widget(fz_context *ctx, pdf_page *page)
{
 return page->widgets;
}
