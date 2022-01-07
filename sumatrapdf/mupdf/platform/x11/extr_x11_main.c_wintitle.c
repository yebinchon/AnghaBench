
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int NET_WM_NAME ;
 int PropModeReplace ;
 int XA_UTF8_STRING ;
 int XChangeProperty (int ,int ,int ,int ,int,int ,unsigned char*,int ) ;
 int XStoreName (int ,int ,char*) ;
 int XmbSetWMProperties (int ,int ,char*,char*,int *,int ,int *,int *,int *) ;
 int Xutf8SetWMProperties (int ,int ,char*,char*,int *,int ,int *,int *,int *) ;
 int strlen (char*) ;
 int xdpy ;
 int xwin ;

void wintitle(pdfapp_t *app, char *s)
{
 XStoreName(xdpy, xwin, s);



 XmbSetWMProperties(xdpy, xwin, s, s, ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0));

 XChangeProperty(xdpy, xwin, NET_WM_NAME, XA_UTF8_STRING, 8,
   PropModeReplace, (unsigned char *)s, strlen(s));
}
