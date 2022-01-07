
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int Status ;
typedef int LPCWSTR ;
typedef int HWND ;


 int InvalidateRect (int ,int *,int ) ;
 int SetWindowTextW (int ,int *) ;
 int TRUE ;
 int UpdateWindow (int ) ;
 int _snwprintf (int *,int,char*,int,int ,int ) ;

__attribute__((used)) static void
DisplayStatus(HWND Label, LPCWSTR Message, LPCWSTR Test, int Try)
{
  WCHAR Status[128];

  _snwprintf(Status, sizeof(Status) / sizeof(Status[0]), L"%d %s %s", Try, Message, Test);
  SetWindowTextW(Label, Status);
  InvalidateRect(Label, ((void*)0), TRUE);
  UpdateWindow(Label);
}
