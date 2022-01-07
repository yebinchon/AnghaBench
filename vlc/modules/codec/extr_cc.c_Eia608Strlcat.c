
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncat (char*,char const*,scalar_t__) ;
 scalar_t__ strnlen (char*,int) ;

__attribute__((used)) static void Eia608Strlcat( char *d, const char *s, int i_max )
{
    if( i_max > 1 )
        strncat( d, s, i_max-1 - strnlen(d, i_max-1));
    if( i_max > 0 )
        d[i_max-1] = '\0';
}
