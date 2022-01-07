
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;


 int lstrcpyW (int *,int ) ;
 int lstrlenW (int ) ;
 int * msi_alloc (int) ;

__attribute__((used)) static inline LPWSTR strdupW( LPCWSTR src )
{
    LPWSTR dest;
    if (!src) return ((void*)0);
    dest = msi_alloc( (lstrlenW(src)+1)*sizeof(WCHAR) );
    if (dest)
        lstrcpyW(dest, src);
    return dest;
}
