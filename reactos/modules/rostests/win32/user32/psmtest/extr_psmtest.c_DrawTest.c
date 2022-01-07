
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPCWSTR ;
typedef int INT ;
typedef int HDC ;
typedef int DWORD ;


 int LPK ;
 int LpkPSMTextOut (int ,int ,int,int *,int,int ) ;
 int StringCchPrintfW (int *,int,char*,int ) ;
 int TextOutW (int ,int,int,int *,int) ;
 int USERLPK ;
 int UserLpkPSMTextOut (int ,int,int,int *,int,int ) ;
 int wcslen (int *) ;

__attribute__((used)) static void DrawTest(HDC hdc, int ypos, LPCWSTR str, DWORD dwFlags, int testtype)
{
    WCHAR Result[100];
    INT ret = 0;

    if (testtype == LPK)
    {
        ret = LpkPSMTextOut(hdc, 0, ypos, str, (!str) ? 10 : wcslen(str), dwFlags);
        StringCchPrintfW(Result, 100, L"Return Value = %d", ret);
        TextOutW(hdc, 200, ypos, Result, wcslen(Result));
    }
    else if (testtype == USERLPK)
    {
        ret = UserLpkPSMTextOut(hdc, 400, ypos, str, wcslen(str), dwFlags);
        StringCchPrintfW(Result, 100, L"Return Value = %d", ret);
        TextOutW(hdc, 600, ypos, Result, wcslen(Result));
    }

}
