
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCWSTR ;
typedef int HWINSTA ;
typedef int DWORD ;


 int CreateWindowStationW (int ,int ,int ,int *) ;
 int GetLastError () ;
 int SetLastError (int) ;
 int WINSTA_ALL_ACCESS ;

__attribute__((used)) static HWINSTA create_winsta(PCWSTR winstaName, DWORD *error)
{
    HWINSTA hwinsta;
    SetLastError(0xfeedf00d);
    hwinsta = CreateWindowStationW(winstaName, 0, WINSTA_ALL_ACCESS, ((void*)0));
    *error = GetLastError();
    return hwinsta;
}
