
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;


 int strcatW (scalar_t__*,scalar_t__ const*) ;
 int strcpyW (scalar_t__*,scalar_t__ const*) ;
 int strlenW (scalar_t__*) ;

__attribute__((used)) static inline void append_string( WCHAR *buffer, const WCHAR *prefix, const WCHAR *str )
{
    WCHAR *p = buffer;

    if (!str) return;
    strcatW( buffer, prefix );
    p += strlenW(p);
    *p++ = '"';
    strcpyW( p, str );
    p += strlenW(p);
    *p++ = '"';
    *p = 0;
}
