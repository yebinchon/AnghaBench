
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int MB_ICONERROR ;
 int MessageBoxA (int ,char*,char*,int ) ;
 int exit (int) ;
 int hwndframe ;

void winerror(pdfapp_t *app, char *msg)
{
 MessageBoxA(hwndframe, msg, "MuPDF: Error", MB_ICONERROR);
 exit(1);
}
