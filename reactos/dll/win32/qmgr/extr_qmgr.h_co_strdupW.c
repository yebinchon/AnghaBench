
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int * CoTaskMemAlloc (int) ;
 int strcpyW (int *,int const*) ;
 int strlenW (int const*) ;

__attribute__((used)) static inline WCHAR *co_strdupW(const WCHAR *src)
{
    WCHAR *dst = CoTaskMemAlloc((strlenW(src) + 1) * sizeof(WCHAR));
    if (dst) strcpyW(dst, src);
    return dst;
}
