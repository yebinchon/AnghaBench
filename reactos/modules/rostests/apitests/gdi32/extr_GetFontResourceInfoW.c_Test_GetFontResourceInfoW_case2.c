
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int FontCount; int** FaceNames; } ;
struct TYPE_6__ {int* lfFaceName; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ LOGFONTW ;
typedef TYPE_2__ GFRI_ENTRY ;
typedef int Data ;
typedef size_t DWORD ;
typedef size_t BOOL ;


 size_t GetFontResourceInfoW (int ,size_t*,TYPE_1__*,size_t) ;
 int ZeroMemory (TYPE_1__*,int) ;
 scalar_t__ lstrcmpiW (int*,int*) ;
 int lstrlenW (int*) ;
 int ok (int,char*,int,int*,int*) ;
 int ok_int (size_t,int) ;
 int printf (char*,int,int) ;

__attribute__((used)) static void
Test_GetFontResourceInfoW_case2(LPCWSTR pszFilePath, const GFRI_ENTRY *Entry)
{
    BOOL Ret;
    DWORD i, Size, Case = 2;
    static LOGFONTW Data[100];


    Size = 0;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 1);
    ok_int(Size, Entry->FontCount * sizeof(LOGFONTW));


    Size = 1024;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 0);
    ok_int(Size, 1024);


    Size = 0;
    ZeroMemory(Data, sizeof(Data));
    Ret = GetFontResourceInfoW(pszFilePath, &Size, Data, Case);
    ok_int(Ret, 1);
    ok_int(Size, Entry->FontCount * sizeof(LOGFONTW));


    Size = sizeof(Data);
    ZeroMemory(Data, sizeof(Data));
    Ret = GetFontResourceInfoW(pszFilePath, &Size, Data, Case);
    ok_int(Ret, 1);
    ok_int(Size, Entry->FontCount * sizeof(LOGFONTW));
    for (i = 0; i < Entry->FontCount; ++i)
    {
        ok(lstrcmpiW(Data[i].lfFaceName, Entry->FaceNames[i]) == 0,
            "face name #%d mismatched: \"%S\" and \"%S\"\n", (int)i, Data[i].lfFaceName, Entry->FaceNames[i]);
    }
}
