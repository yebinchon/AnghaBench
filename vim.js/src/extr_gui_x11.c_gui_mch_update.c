
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XtInputMask ;


 int XtAppPending (int ) ;
 int XtAppProcessEvent (int ,int) ;
 int XtIMAll ;
 int XtIMTimer ;
 int XtIMXEvent ;
 int app_context ;
 scalar_t__ suppress_alternate_input ;
 int vim_is_input_buf_full () ;

void
gui_mch_update()
{
    XtInputMask mask, desired;






 desired = (XtIMAll);
    while ((mask = XtAppPending(app_context)) && (mask & desired)
     && !vim_is_input_buf_full())
 XtAppProcessEvent(app_context, desired);
}
