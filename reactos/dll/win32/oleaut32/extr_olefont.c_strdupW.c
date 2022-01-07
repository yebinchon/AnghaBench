
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int memcpy (int *,int const*,int) ;
 int strlenW (int const*) ;

__attribute__((used)) static WCHAR *strdupW(const WCHAR* str)
{
    WCHAR *ret;
    DWORD size = (strlenW(str) + 1) * sizeof(WCHAR);

    ret = HeapAlloc(GetProcessHeap(), 0, size);
    if(ret)
        memcpy(ret, str, size);
    return ret;
}
