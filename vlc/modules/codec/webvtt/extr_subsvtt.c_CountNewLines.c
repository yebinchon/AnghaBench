
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static unsigned CountNewLines( const char *psz )
{
    unsigned i = 0;
    while( psz && *psz )
        psz = strchr( psz + 1, '\n' );
    return i;
}
