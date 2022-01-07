
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int GFRI_ENTRY ;
typedef int Data ;
typedef int DWORD ;
typedef int BOOL ;


 int GetFontResourceInfoW (int ,int*,int*,int) ;
 int ok_int (int,int) ;

__attribute__((used)) static void
Test_GetFontResourceInfoW_case3(LPCWSTR pszFilePath, const GFRI_ENTRY *Entry)
{
    BOOL Ret;
    DWORD Size, Case = 3;
    DWORD Data[2];


    Size = 0;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 1);
    ok_int(Size, 4);


    Size = sizeof(Data);
    Ret = GetFontResourceInfoW(pszFilePath, &Size, ((void*)0), Case);
    ok_int(Ret, 0);
    ok_int(Size, 8);


    Size = 0;
    Data[0] = 0xDEADFACE;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, Data, Case);
    ok_int(Ret, 1);
    ok_int(Size, 4);
    ok_int(Data[0], 0xDEADFACE);


    Size = sizeof(Data);
    Data[0] = 0xDEADFACE;
    Ret = GetFontResourceInfoW(pszFilePath, &Size, Data, Case);
    ok_int(Ret, 1);
    ok_int(Size, 4);
    ok_int(Data[0], 1);
}
