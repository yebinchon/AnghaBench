
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPCWSTR ;
typedef int GFRI_ENTRY ;
typedef int DWORD ;
typedef int BOOL ;


 int GetFontResourceInfoW (int ,int*,int *,int) ;
 int MAX_PATH ;
 scalar_t__ lstrcmpiW (int ,int *) ;
 int lstrlenW (int ) ;
 int ok (int,char*,int *) ;
 int ok_int (int,int) ;

__attribute__((used)) static void
Test_GetFontResourceInfoW_case4(LPCWSTR pszFilePath, const GFRI_ENTRY *Entry)
{
    BOOL Ret;
    DWORD Size, Case = 4;
    WCHAR Data[MAX_PATH];


    Size = 0;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 1);
    ok_int(Size, (lstrlenW(pszFilePath) + 1) * sizeof(WCHAR));


    Size = MAX_PATH;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 0);
    ok_int(Size, MAX_PATH);


    Size = 0;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, Data, Case);
    ok_int(Ret, 1);
    ok_int(Size, (lstrlenW(pszFilePath) + 1) * sizeof(WCHAR));


    Size = MAX_PATH;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, Data, Case);
    ok_int(Ret, 1);
    ok_int(Size, (lstrlenW(pszFilePath) + 1) * sizeof(WCHAR));
    ok(lstrcmpiW(pszFilePath, Data) == 0, "data mismatched: \"%S\"\n", Data);
}
