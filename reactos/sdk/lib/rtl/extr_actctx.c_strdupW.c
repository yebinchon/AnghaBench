
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int * RtlAllocateHeap (int ,int ,int) ;
 int RtlGetProcessHeap () ;
 int * strcpyW (int *,int const*) ;
 int strlenW (int const*) ;

__attribute__((used)) static WCHAR *strdupW(const WCHAR* str)
{
    WCHAR* ptr;

    if (!(ptr = RtlAllocateHeap(RtlGetProcessHeap(), 0, (strlenW(str) + 1) * sizeof(WCHAR))))
        return ((void*)0);
    return strcpyW(ptr, str);
}
