
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int TCHAR ;
typedef int LPARAM ;
typedef int DWORD ;


 int GetComputerName (int *,int*) ;
 int GetUserName (int *,int*) ;
 int SB_SETTEXT ;
 int SendMessage (int ,int ,int,int ) ;
 int hStatusBar ;

void UpdateStatusBar(void)
{
    TCHAR text[260];
    DWORD size;

    size = sizeof(text)/sizeof(TCHAR);
    GetUserName(text, &size);
    SendMessage(hStatusBar, SB_SETTEXT, 1, (LPARAM)text);
    size = sizeof(text)/sizeof(TCHAR);
    GetComputerName(text, &size);
    SendMessage(hStatusBar, SB_SETTEXT, 0, (LPARAM)text);
}
