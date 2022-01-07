
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;


 int CANCEL ;
 int DISCARD ;


 int MB_YESNOCANCEL ;
 int MessageBoxA (int ,char*,char*,int ) ;
 int SAVE ;
 int hwndframe ;

int winsavequery(pdfapp_t *app)
{
 switch(MessageBoxA(hwndframe, "File has unsaved changes. Do you want to save", "MuPDF", MB_YESNOCANCEL))
 {
 case 128: return SAVE;
 case 129: return DISCARD;
 default: return CANCEL;
 }
}
