
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Widget ;


 scalar_t__ False ;
 scalar_t__ True ;
 scalar_t__ XtIsRealized (int *) ;
 int XtMapWidget (int *) ;
 scalar_t__ isMapped (int *) ;
 scalar_t__ widgetIsIconified (int *) ;

void workshop_maximize_shell(Widget shell)
{
 if (shell != ((void*)0) &&
     XtIsRealized(shell) == True &&
     widgetIsIconified(shell) == True &&
     isMapped(shell) == False) {
  XtMapWidget(shell);
 }
}
