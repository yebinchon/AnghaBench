
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;


 int GetWindowsDirectoryW (int ,int ) ;
 int MAX_PATH ;
 int lstrcatW (int ,char*) ;

__attribute__((used)) static void
GetSystemFontDirectory(LPWSTR pszDir)
{
    GetWindowsDirectoryW(pszDir, MAX_PATH);
    lstrcatW(pszDir, L"\\Fonts");
}
