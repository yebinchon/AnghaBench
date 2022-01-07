
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {char* FontInfo; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ GFRI_ENTRY ;
typedef int DWORD ;
typedef int BOOL ;


 int CopyMemory (int*,char*,int) ;
 int GetFontResourceInfoW (int ,int*,int*,int) ;
 int SzFromMultiSz (int*) ;
 scalar_t__ lstrcmpiW (int*,char*) ;
 int lstrlenW (int*) ;
 int ok (int,char*,...) ;
 int ok_int (int,int) ;
 int printf (char*,int,char) ;

__attribute__((used)) static void
Test_GetFontResourceInfoW_case1(LPCWSTR pszFilePath, const GFRI_ENTRY *Entry)
{
    BOOL Ret;
    DWORD Size, Case = 1;
    static WCHAR Data[1024 / sizeof(WCHAR)];


    Size = 0;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 1);

    ok(Size != 0, "Size expected non-zero but zero\n");


    Size = 1024;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 0);
    ok_int(Size, 1024);


    Size = 0;
    CopyMemory(Data, L"ABC\0", sizeof(L"ABC\0"));
    Ret = GetFontResourceInfoW(pszFilePath, &Size, Data, Case);
    ok_int(Ret, 1);

    ok(Size != 0, "Size expected non-zero but zero\n");
    ok(lstrcmpiW(Data, L"ABC") == 0, "data mismatched: \"%S\"\n", Data);


    Size = 1024;
    CopyMemory(Data, L"ABC\0", sizeof(L"ABC\0"));
    Ret = GetFontResourceInfoW(pszFilePath, &Size, Data, Case);
    ok_int(Ret, 1);

    ok(Size != 0, "Size expected non-zero but zero\n");

    SzFromMultiSz(Data);
    ok(lstrcmpiW(Data, Entry->FontInfo) == 0, "data mismatched: \"%S\" and \"%S\"\n",
       Data, Entry->FontInfo);
}
