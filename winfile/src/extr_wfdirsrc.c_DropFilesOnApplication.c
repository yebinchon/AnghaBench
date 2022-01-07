
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPARAM ;
typedef int WORD ;
typedef int RECT ;
typedef int POINT ;
typedef int LPTSTR ;
typedef int * HWND ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateDropFiles (int ,int,int ) ;
 int GetClientRect (int *,int *) ;
 int GetCursorPos (int *) ;
 int PostMessage (int *,int ,int ,long) ;
 int PtInRect (int *,int ) ;
 int ScreenToClient (int *,int *) ;
 int WM_DROPFILES ;
 int * hwndGlobalSink ;

WORD
DropFilesOnApplication(LPTSTR pszFiles)
{
    POINT pt;
    HWND hwnd;
    RECT rc;
    HANDLE hDrop;

    if (!(hwnd = hwndGlobalSink))
        return 0;

    hwndGlobalSink = ((void*)0);

    GetCursorPos(&pt);
    GetClientRect(hwnd,&rc);
    ScreenToClient(hwnd,&pt);

    hDrop = CreateDropFiles(pt, !PtInRect(&rc,pt), pszFiles);

    if (!hDrop)
        return 0;

    PostMessage(hwnd, WM_DROPFILES, (WPARAM)hDrop, 0L);

    return 1;
}
