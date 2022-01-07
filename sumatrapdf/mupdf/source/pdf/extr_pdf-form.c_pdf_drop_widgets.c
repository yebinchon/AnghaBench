
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ pdf_widget ;
typedef int fz_context ;


 int pdf_drop_widget (int *,TYPE_1__*) ;

void
pdf_drop_widgets(fz_context *ctx, pdf_widget *widget)
{
 while (widget)
 {
  pdf_widget *next = widget->next;
  pdf_drop_widget(ctx, widget);
  widget = next;
 }
}
