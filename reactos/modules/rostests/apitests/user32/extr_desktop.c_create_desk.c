
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int HDESK ;
typedef int DWORD ;


 int CreateDesktopW (int ,int *,int *,int ,int ,int *) ;
 int DESKTOP_ALL_ACCESS ;
 int GetLastError () ;
 int SetLastError (int) ;

__attribute__((used)) static HDESK create_desk(PCWSTR deskName, DWORD *error)
{
    HDESK hdesk;
    SetLastError(0xfeedf00d);
    hdesk = CreateDesktopW(deskName, ((void*)0), ((void*)0), 0, DESKTOP_ALL_ACCESS, ((void*)0));
    *error = GetLastError();
    return hdesk;
}
