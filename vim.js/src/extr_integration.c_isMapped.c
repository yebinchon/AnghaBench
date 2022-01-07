
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Widget ;
typedef scalar_t__ Boolean ;


 scalar_t__ False ;
 int XtDisplay (int *) ;
 scalar_t__ XtIsRealized (int *) ;
 int XtWindow (int *) ;
 scalar_t__ isWindowMapped (int ,int ) ;

__attribute__((used)) static Boolean
isMapped(Widget widget)
{
 if (widget == ((void*)0)) {
  return(False);
 }

 if (XtIsRealized(widget) == False) {
  return(False);
 }

 return(isWindowMapped(XtDisplay(widget), XtWindow(widget)));
}
