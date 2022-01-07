
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int ULONG ;
typedef int* LPWSTR ;


 int lstrlenW (int*) ;

LPWSTR
AppendBackslash(LPWSTR String)
{
    ULONG Length;

    Length = lstrlenW(String);
    if (String[Length - 1] != L'\\')
    {
        String[Length] = L'\\';
        Length++;
        String[Length] = (WCHAR)0;
    }

    return &String[Length];
}
