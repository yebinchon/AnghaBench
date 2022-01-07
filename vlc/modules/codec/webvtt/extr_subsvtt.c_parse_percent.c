
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float us_strtof (char const*,char**) ;

__attribute__((used)) static bool parse_percent( const char *psz, float *value )
{
    char *psz_end;
    float d = us_strtof( psz, &psz_end );
    if( d >= 0.0 && d <= 100.0 && *psz_end == '%' )
        *value = d / 100.0;
    return psz_end != psz;
}
