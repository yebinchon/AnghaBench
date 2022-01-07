
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdfapp_t ;
struct TYPE_3__ {int icon_type; int button_group_type; int button_pressed; int title; int message; } ;
typedef TYPE_1__ pdf_alert_event ;






 int MB_ICONERROR ;
 int MB_ICONINFORMATION ;
 int MB_ICONQUESTION ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MB_OKCANCEL ;
 int MB_YESNO ;
 int MB_YESNOCANCEL ;
 int MessageBoxA (int ,int ,int ,int) ;
 int PDF_ALERT_BUTTON_CANCEL ;




 int PDF_ALERT_BUTTON_NO ;
 int PDF_ALERT_BUTTON_NONE ;
 int PDF_ALERT_BUTTON_OK ;
 int PDF_ALERT_BUTTON_YES ;




 int hwndframe ;

void winalert(pdfapp_t *app, pdf_alert_event *alert)
{
 int buttons = MB_OK;
 int icon = MB_ICONWARNING;
 int pressed = PDF_ALERT_BUTTON_NONE;

 switch (alert->icon_type)
 {
 case 131:
  icon = MB_ICONERROR;
  break;
 case 128:
  icon = MB_ICONWARNING;
  break;
 case 130:
  icon = MB_ICONQUESTION;
  break;
 case 129:
  icon = MB_ICONINFORMATION;
  break;
 }

 switch (alert->button_group_type)
 {
 case 135:
  buttons = MB_OK;
  break;
 case 134:
  buttons = MB_OKCANCEL;
  break;
 case 133:
  buttons = MB_YESNO;
  break;
 case 132:
  buttons = MB_YESNOCANCEL;
  break;
 }

 pressed = MessageBoxA(hwndframe, alert->message, alert->title, icon|buttons);

 switch (pressed)
 {
 case 137:
  alert->button_pressed = PDF_ALERT_BUTTON_OK;
  break;
 case 139:
  alert->button_pressed = PDF_ALERT_BUTTON_CANCEL;
  break;
 case 138:
  alert->button_pressed = PDF_ALERT_BUTTON_NO;
  break;
 case 136:
  alert->button_pressed = PDF_ALERT_BUTTON_YES;
 }
}
