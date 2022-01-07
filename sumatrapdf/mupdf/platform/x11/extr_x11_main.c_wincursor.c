
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int ARROW ;
 int CARET ;
 int HAND ;
 int WAIT ;
 int XDefineCursor (int ,int ,int ) ;
 int XFlush (int ) ;
 int xcarrow ;
 int xccaret ;
 int xchand ;
 int xcwait ;
 int xdpy ;
 int xwin ;

void wincursor(pdfapp_t *app, int curs)
{
 if (curs == ARROW)
  XDefineCursor(xdpy, xwin, xcarrow);
 if (curs == HAND)
  XDefineCursor(xdpy, xwin, xchand);
 if (curs == WAIT)
  XDefineCursor(xdpy, xwin, xcwait);
 if (curs == CARET)
  XDefineCursor(xdpy, xwin, xccaret);
 XFlush(xdpy);
}
