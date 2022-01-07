
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int SIZE_T ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int memcpy (int *,int const*,int) ;
 int strlenW (int const*) ;

__attribute__((used)) static inline WCHAR *heap_strdupW(const WCHAR *src)
{
    WCHAR *dst;
    SIZE_T len;
    if (!src) return ((void*)0);
    len = (strlenW(src) + 1) * sizeof(WCHAR);
    if ((dst = HeapAlloc(GetProcessHeap(), 0, len))) memcpy(dst, src, len);
    return dst;
}
