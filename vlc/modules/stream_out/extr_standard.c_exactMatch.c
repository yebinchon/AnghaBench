
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool exactMatch( const char *psz_target, const char *psz_string,
                        size_t i_len )
{
    if ( strncmp( psz_target, psz_string, i_len ) )
        return 0;
    else
        return ( psz_target[i_len] < 'a' || psz_target[i_len] > 'z' );
}
