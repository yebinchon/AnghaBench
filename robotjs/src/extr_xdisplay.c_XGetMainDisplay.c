
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Display ;


 int XCloseMainDisplay () ;
 int * XOpenDisplay (int *) ;
 int atexit (int (*) ()) ;
 int * displayName ;
 int fputs (char*,int ) ;
 scalar_t__ hasDisplayNameChanged ;
 int * mainDisplay ;
 int registered ;
 int stderr ;

Display *XGetMainDisplay(void)
{

 if (hasDisplayNameChanged) {
  XCloseMainDisplay();
  hasDisplayNameChanged = 0;
 }

 if (mainDisplay == ((void*)0)) {

  mainDisplay = XOpenDisplay(displayName);


  if (mainDisplay == ((void*)0)) {
   mainDisplay = XOpenDisplay(((void*)0));
  }

  if (mainDisplay == ((void*)0)) {
   fputs("Could not open main display\n", stderr);
  } else if (!registered) {
   atexit(&XCloseMainDisplay);
   registered = 1;
  }
 }

 return mainDisplay;
}
