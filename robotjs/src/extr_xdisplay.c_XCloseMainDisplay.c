
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCloseDisplay (int *) ;
 int * mainDisplay ;

void XCloseMainDisplay(void)
{
 if (mainDisplay != ((void*)0)) {
  XCloseDisplay(mainDisplay);
  mainDisplay = ((void*)0);
 }
}
