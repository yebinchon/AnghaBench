
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int MB_ICONWARNING ;
 int MessageBoxA (int ,char*,char*,int ) ;
 int hwndframe ;

void winwarn(pdfapp_t *app, char *msg)
{
 MessageBoxA(hwndframe, msg, "MuPDF: Warning", MB_ICONWARNING);
}
