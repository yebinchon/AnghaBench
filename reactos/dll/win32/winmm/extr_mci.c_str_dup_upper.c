
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ LPWSTR ;
typedef int LPCWSTR ;
typedef int INT ;


 int CharUpperW (scalar_t__) ;
 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int memcpy (scalar_t__,int ,int) ;
 int strlenW (int ) ;

__attribute__((used)) static inline LPWSTR str_dup_upper( LPCWSTR str )
{
    INT len = (strlenW(str) + 1) * sizeof(WCHAR);
    LPWSTR p = HeapAlloc( GetProcessHeap(), 0, len );
    if (p)
    {
        memcpy( p, str, len );
        CharUpperW( p );
    }
    return p;
}
