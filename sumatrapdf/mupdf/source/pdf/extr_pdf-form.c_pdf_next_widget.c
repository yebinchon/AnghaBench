
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ pdf_widget ;
typedef int fz_context ;



pdf_widget *pdf_next_widget(fz_context *ctx, pdf_widget *widget)
{
 return widget->next;
}
