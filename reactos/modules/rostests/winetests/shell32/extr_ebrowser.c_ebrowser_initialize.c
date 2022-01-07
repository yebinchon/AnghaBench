
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int IExplorerBrowser ;
typedef int HRESULT ;


 int IExplorerBrowser_Initialize (int *,int ,int *,int *) ;
 int SetRect (int *,int ,int ,int,int) ;
 int hwnd ;

__attribute__((used)) static HRESULT ebrowser_initialize(IExplorerBrowser *peb)
{
    RECT rc;
    SetRect(&rc, 0, 0, 500, 500);
    return IExplorerBrowser_Initialize(peb, hwnd, &rc, ((void*)0));
}
