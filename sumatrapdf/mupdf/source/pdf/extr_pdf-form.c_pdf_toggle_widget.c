
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int obj; TYPE_1__* page; } ;
typedef TYPE_2__ pdf_widget ;
typedef int fz_context ;
struct TYPE_5__ {int doc; } ;




 int pdf_widget_type (int *,TYPE_2__*) ;
 int toggle_check_box (int *,int ,int ) ;

int pdf_toggle_widget(fz_context *ctx, pdf_widget *widget)
{
 switch (pdf_widget_type(ctx, widget))
 {
 default:
  return 0;
 case 129:
 case 128:
  toggle_check_box(ctx, widget->page->doc, widget->obj);
  return 1;
 }
 return 0;
}
