
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pdfapp_t ;
struct TYPE_3__ {char* title; char* message; int button_group_type; int button_pressed; } ;
typedef TYPE_1__ pdf_alert_event ;






 int PDF_ALERT_BUTTON_OK ;
 int PDF_ALERT_BUTTON_YES ;
 int fprintf (int ,char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int stderr ;

void winalert(pdfapp_t *app, pdf_alert_event *alert)
{
 char buf[1024];
 snprintf(buf, sizeof buf, "Alert %s: %s", alert->title, alert->message);
 fprintf(stderr, "%s\n", buf);
 switch (alert->button_group_type)
 {
 case 131:
 case 130:
  alert->button_pressed = PDF_ALERT_BUTTON_OK;
  break;
 case 129:
 case 128:
  alert->button_pressed = PDF_ALERT_BUTTON_YES;
  break;
 }
}
