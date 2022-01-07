
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 float us_strtof (char const*,char**) ;

__attribute__((used)) static bool parse_percent_tuple( const char *psz, float *x, float *y )
{
    char *psz_end;
    float a = us_strtof( psz, &psz_end );
    if( psz_end != psz &&
        a >= 0.0 && a <= 100.0 && psz_end && *psz_end == '%' )
    {
        psz = strchr( psz_end, ',' );
        if( psz )
        {
            float b = us_strtof( ++psz, &psz_end );
            if( psz_end != psz &&
                b >= 0.0 && b <= 100.0 && psz_end && *psz_end == '%' )
            {
                *x = a / 100.0;
                *y = b / 100.0;
                return 1;
            }
        }
    }
    return 0;
}
