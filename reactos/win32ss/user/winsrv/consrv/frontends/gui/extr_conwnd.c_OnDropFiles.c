
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int VOID ;
typedef int PCONSRV_CONSOLE ;
typedef int* LPWSTR ;
typedef int HDROP ;


 scalar_t__ ARRAYSIZE (int*) ;
 int DragFinish (int ) ;
 int DragQueryFileW (int ,int ,int*,scalar_t__) ;
 int MAX_PATH ;
 int PasteText (int ,int*,int ) ;
 int StringCchCatW (int*,scalar_t__,char*) ;
 int * wcschr (int*,int) ;
 int wcslen (int*) ;

__attribute__((used)) static VOID
OnDropFiles(PCONSRV_CONSOLE Console, HDROP hDrop)
{
    LPWSTR pszPath;
    WCHAR szPath[MAX_PATH + 2];

    szPath[0] = L'"';

    DragQueryFileW(hDrop, 0, &szPath[1], ARRAYSIZE(szPath) - 1);
    DragFinish(hDrop);

    if (wcschr(&szPath[1], L' ') != ((void*)0))
    {
        StringCchCatW(szPath, ARRAYSIZE(szPath), L"\"");
        pszPath = szPath;
    }
    else
    {
        pszPath = &szPath[1];
    }

    PasteText(Console, pszPath, wcslen(pszPath));
}
