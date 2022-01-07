
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ctx; } ;
typedef TYPE_1__ pdfapp_t ;
typedef int fz_context ;


 int XCloseDisplay (int ) ;
 int XDestroyWindow (int ,int ) ;
 int XFreeCursor (int ,int ) ;
 int XFreeGC (int ,int ) ;
 int XFreePixmap (int ,int ) ;
 int fz_drop_context (int *) ;
 int pdfapp_close (TYPE_1__*) ;
 int xcarrow ;
 int xccaret ;
 int xchand ;
 int xcwait ;
 int xdpy ;
 int xgc ;
 int xicon ;
 int xwin ;

__attribute__((used)) static void cleanup(pdfapp_t *app)
{
 fz_context *ctx = app->ctx;

 pdfapp_close(app);

 XDestroyWindow(xdpy, xwin);

 XFreePixmap(xdpy, xicon);

 XFreeCursor(xdpy, xccaret);
 XFreeCursor(xdpy, xcwait);
 XFreeCursor(xdpy, xchand);
 XFreeCursor(xdpy, xcarrow);

 XFreeGC(xdpy, xgc);

 XCloseDisplay(xdpy);

 fz_drop_context(ctx);
}
