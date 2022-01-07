
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int HWINSTA ;
typedef int DWORD ;


 int FALSE ;
 int GetLastError () ;
 int OpenWindowStationW (int ,int ,int ) ;
 int SetLastError (int) ;
 int WINSTA_ALL_ACCESS ;

__attribute__((used)) static HWINSTA open_winsta(PCWSTR winstaName, DWORD *error)
{
    HWINSTA hwinsta;
    SetLastError(0xfeedf00d);
    hwinsta = OpenWindowStationW(winstaName, FALSE, WINSTA_ALL_ACCESS);
    *error = GetLastError();
    return hwinsta;
}
