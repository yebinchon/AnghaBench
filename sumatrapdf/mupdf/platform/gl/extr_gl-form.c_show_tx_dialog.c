
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int obj; } ;
typedef TYPE_1__ pdf_widget ;
struct TYPE_6__ {int dialog; int * focus; } ;


 int ctx ;
 int pdf_field_value (int ,int ) ;
 int tx_dialog ;
 int tx_input ;
 TYPE_1__* tx_widget ;
 TYPE_2__ ui ;
 int ui_input_init (int *,int ) ;

void show_tx_dialog(pdf_widget *widget)
{
 ui_input_init(&tx_input, pdf_field_value(ctx, widget->obj));
 ui.focus = &tx_input;
 ui.dialog = tx_dialog;
 tx_widget = widget;
}
