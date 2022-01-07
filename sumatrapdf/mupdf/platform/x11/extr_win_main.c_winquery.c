
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;




 int MB_YESNOCANCEL ;
 int MessageBoxA (int ,char const*,char*,int ) ;
 int QUERY_NO ;
 int QUERY_YES ;
 int hwndframe ;

int winquery(pdfapp_t *app, const char *query)
{
 switch(MessageBoxA(hwndframe, query, "MuPDF", MB_YESNOCANCEL))
 {
 case 128: return QUERY_YES;
 case 129:
 default: return QUERY_NO;
 }
}
