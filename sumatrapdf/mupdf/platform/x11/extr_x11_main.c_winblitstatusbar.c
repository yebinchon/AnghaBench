
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int pdfapp_t ;
struct TYPE_4__ {char* search; int pageno; int pagecount; int winw; scalar_t__ issearching; } ;


 int WhitePixel (int ,int ) ;
 int XSetForeground (int ,int ,int ) ;
 int fillrect (int ,int ,int ,int) ;
 TYPE_1__ gapp ;
 char* message ;
 scalar_t__ showingmessage ;
 scalar_t__ showingpage ;
 int snprintf (char*,int,char*,int,int) ;
 int sprintf (char*,char*,char*) ;
 int windrawstring (TYPE_1__*,int,int,char*) ;
 int windrawstringxor (TYPE_1__*,int,int,char*) ;
 int xdpy ;
 int xgc ;
 int xscr ;

__attribute__((used)) static void winblitstatusbar(pdfapp_t *app)
{
 if (gapp.issearching)
 {
  char buf[sizeof(gapp.search) + 50];
  sprintf(buf, "Search: %s", gapp.search);
  XSetForeground(xdpy, xgc, WhitePixel(xdpy, xscr));
  fillrect(0, 0, gapp.winw, 30);
  windrawstring(&gapp, 10, 20, buf);
 }
 else if (showingmessage)
 {
  XSetForeground(xdpy, xgc, WhitePixel(xdpy, xscr));
  fillrect(0, 0, gapp.winw, 30);
  windrawstring(&gapp, 10, 20, message);
 }
 else if (showingpage)
 {
  char buf[42];
  snprintf(buf, sizeof buf, "Page %d/%d", gapp.pageno, gapp.pagecount);
  windrawstringxor(&gapp, 10, 20, buf);
 }
}
