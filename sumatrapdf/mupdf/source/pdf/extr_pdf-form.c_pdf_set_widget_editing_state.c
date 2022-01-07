
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ignore_trigger_events; } ;
typedef TYPE_1__ pdf_widget ;
typedef int fz_context ;



void pdf_set_widget_editing_state(fz_context *ctx, pdf_widget *widget, int editing)
{
 widget->ignore_trigger_events = editing;
}
