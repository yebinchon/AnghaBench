
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;


 int CP_UTF8 ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;

char *WtoA(LPCWSTR wstr)
{
    int length;
    char *result;

    length = WideCharToMultiByte(CP_UTF8, 0, wstr, -1, ((void*)0), 0, ((void*)0), ((void*)0));

    result = HeapAlloc(GetProcessHeap(), 0, length);

    if (result)
        WideCharToMultiByte(CP_UTF8, 0, wstr, -1, result, length, ((void*)0), ((void*)0));

    return result;
}
