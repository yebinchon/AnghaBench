
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdfapp_t ;
struct TYPE_4__ {int function; } ;
typedef TYPE_1__ XGCValues ;


 int DefaultScreen (int ) ;
 int GCFunction ;
 int GXxor ;
 int WhitePixel (int ,int ) ;
 int XChangeGC (int ,int ,int ,TYPE_1__*) ;
 int XDrawString (int ,int ,int ,int,int,char*,int ) ;
 int XFlush (int ) ;
 int XGetGCValues (int ,int ,int ,TYPE_1__*) ;
 int XSetForeground (int ,int ,int ) ;
 int strlen (char*) ;
 int xdpy ;
 int xgc ;
 int xwin ;

__attribute__((used)) static void windrawstringxor(pdfapp_t *app, int x, int y, char *s)
{
 int prevfunction;
 XGCValues xgcv;

 XGetGCValues(xdpy, xgc, GCFunction, &xgcv);
 prevfunction = xgcv.function;
 xgcv.function = GXxor;
 XChangeGC(xdpy, xgc, GCFunction, &xgcv);

 XSetForeground(xdpy, xgc, WhitePixel(xdpy, DefaultScreen(xdpy)));

 XDrawString(xdpy, xwin, xgc, x, y, s, strlen(s));
 XFlush(xdpy);

 XGetGCValues(xdpy, xgc, GCFunction, &xgcv);
 xgcv.function = prevfunction;
 XChangeGC(xdpy, xgc, GCFunction, &xgcv);
}
