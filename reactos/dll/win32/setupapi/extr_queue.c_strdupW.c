
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;


 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int memcpy (int *,int const*,int) ;
 int strlenW (int const*) ;

__attribute__((used)) static inline WCHAR *strdupW( const WCHAR *str )
{
    WCHAR *ret = ((void*)0);
    if (str)
    {
        int len = (strlenW(str) + 1) * sizeof(WCHAR);
        if ((ret = HeapAlloc( GetProcessHeap(), 0, len ))) memcpy( ret, str, len );
    }
    return ret;
}
