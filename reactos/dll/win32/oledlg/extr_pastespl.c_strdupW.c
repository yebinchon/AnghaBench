
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int DWORD ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int lstrlenW (int const*) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static inline WCHAR *strdupW(const WCHAR *str)
{
    DWORD len;
    WCHAR *ret;
    if(!str) return ((void*)0);
    len = lstrlenW(str) + 1;
    ret = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
    memcpy(ret, str, len * sizeof(WCHAR));
    return ret;
}
