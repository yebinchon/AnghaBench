
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef char* LPCWSTR ;


 int GetSystemFontDirectory (int ) ;
 int lstrcatW (int ,char*) ;

__attribute__((used)) static void
GetSystemFontPath(LPWSTR pszPath, LPCWSTR pszFile)
{
    GetSystemFontDirectory(pszPath);
    lstrcatW(pszPath, L"\\");
    lstrcatW(pszPath, pszFile);
}
