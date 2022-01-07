
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int BOOL ;


 int GetWindowsDirectoryW (int *,int ) ;
 int MAX_PATH ;
 int _countof (int *) ;
 int * wcsstr (int *,char*) ;

__attribute__((used)) static BOOL IsReactOS(void)
{
    WCHAR szWinDir[MAX_PATH];
    GetWindowsDirectoryW(szWinDir, _countof(szWinDir));
    return (wcsstr(szWinDir, L"ReactOS") != ((void*)0));
}
