
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FontCount; } ;
typedef int LPCWSTR ;
typedef TYPE_1__ GFRI_ENTRY ;
typedef int Data ;
typedef int DWORD ;
typedef int BOOL ;


 int GetFontResourceInfoW (int ,int*,int*,int) ;
 int ok_int (int,int) ;

__attribute__((used)) static void
Test_GetFontResourceInfoW_case0(LPCWSTR pszFilePath, const GFRI_ENTRY *Entry)
{
    BOOL Ret;
    DWORD Size, Case = 0;
    DWORD Data;


    Size = 0;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 1);
    ok_int(Size, 4);


    Size = 1024;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 0);
    ok_int(Size, 1024);


    Data = 0xDEADFACE;
    Size = 0;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, &Data, Case);
    ok_int(Ret, 1);
    ok_int(Data, 0xDEADFACE);
    ok_int(Size, 4);


    Data = 0xDEADFACE;
    Size = sizeof(Data);
    Ret = GetFontResourceInfoW(pszFilePath, &Size, &Data, Case);
    ok_int(Ret, 1);
    ok_int(Data, Entry->FontCount);
    ok_int(Size, 4);
}
