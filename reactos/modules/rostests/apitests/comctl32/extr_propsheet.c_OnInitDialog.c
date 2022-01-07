
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPARAM ;
typedef int HWND ;
typedef int BOOL ;


 int FALSE ;
 int SetDlgItemTextW (int ,int ,char*) ;
 int SetTimer (int ,int,int,int *) ;
 int TRUE ;
 int edt1 ;
 int s_bNotified ;

__attribute__((used)) static BOOL OnInitDialog(HWND hwnd, HWND hwndFocus, LPARAM lParam)
{
    s_bNotified = FALSE;
    SetDlgItemTextW(hwnd, edt1, L"text");
    SetTimer(hwnd, 999, 300, ((void*)0));
    return TRUE;
}
