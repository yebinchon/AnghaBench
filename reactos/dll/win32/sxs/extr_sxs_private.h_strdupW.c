
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int strcpyW (int *,int const*) ;
 int strlenW (int const*) ;

__attribute__((used)) static inline WCHAR *strdupW( const WCHAR *src )
{
    WCHAR *dst;

    if (!src) return ((void*)0);
    dst = HeapAlloc( GetProcessHeap(), 0, (strlenW( src ) + 1) * sizeof(WCHAR) );
    if (dst) strcpyW( dst, src );
    return dst;
}
