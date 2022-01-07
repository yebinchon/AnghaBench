
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IsEscapeNeeded (char const) ;

__attribute__((used)) static bool IsEscape( const char *psz )
{
    if( !psz )
        return 0;
    return psz[0] == '\\' && IsEscapeNeeded( psz[1] );
}
