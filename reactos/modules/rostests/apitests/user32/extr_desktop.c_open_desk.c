
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int HDESK ;
typedef int DWORD ;


 int DESKTOP_ALL_ACCESS ;
 int FALSE ;
 int GetLastError () ;
 int OpenDesktopW (int ,int ,int ,int ) ;
 int SetLastError (int) ;

__attribute__((used)) static HDESK open_desk(PCWSTR deskName, DWORD *error)
{
    HDESK hdesk;
    SetLastError(0xfeedf00d);
    hdesk = OpenDesktopW(deskName, 0, FALSE, DESKTOP_ALL_ACCESS);
    *error = GetLastError();
    return hdesk;
}
