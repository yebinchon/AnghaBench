
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int BlackPixel (int ,int ) ;
 int DefaultScreen (int ) ;
 int XDrawString (int ,int ,int ,int,int,char*,int ) ;
 int XSetForeground (int ,int ,int ) ;
 int strlen (char*) ;
 int xdpy ;
 int xgc ;
 int xwin ;

void windrawstring(pdfapp_t *app, int x, int y, char *s)
{
 XSetForeground(xdpy, xgc, BlackPixel(xdpy, DefaultScreen(xdpy)));
 XDrawString(xdpy, xwin, xgc, x, y, s, strlen(s));
}
