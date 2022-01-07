
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szTitle ;
typedef int szBuffer ;
typedef int WCHAR ;
typedef int VOID ;
typedef int UINT ;


 scalar_t__ LoadStringW (int ,int ,int*,int) ;
 int MessageBoxW (int *,int*,int*,int ) ;
 int netcfgx_hInstance ;

VOID
DisplayError(UINT ResTxt, UINT ResTitle, UINT Type)
{
    WCHAR szBuffer[300];
    WCHAR szTitle[100];

    if (LoadStringW(netcfgx_hInstance, ResTxt, szBuffer, sizeof(szBuffer)/sizeof(WCHAR)))
        szBuffer[(sizeof(szBuffer)/sizeof(WCHAR))-1] = L'\0';
    else
        szBuffer[0] = L'\0';

    if (LoadStringW(netcfgx_hInstance, ResTitle, szTitle, sizeof(szTitle)/sizeof(WCHAR)))
        szTitle[(sizeof(szTitle)/sizeof(WCHAR))-1] = L'\0';
    else
        szTitle[0] = L'\0';

    MessageBoxW(((void*)0), szBuffer, szTitle, Type);
}
