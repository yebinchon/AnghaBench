
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double member_0; float i_value; int unit; int member_1; } ;
typedef TYPE_1__ ttml_length_t ;


 int TTML_UNIT_CELL ;
 int TTML_UNIT_PERCENT ;
 int TTML_UNIT_PIXELS ;
 int TTML_UNIT_UNKNOWN ;
 float us_strtof (char const*,char**) ;

__attribute__((used)) static ttml_length_t ttml_read_length( const char *psz )
{
    ttml_length_t len = { 0.0, TTML_UNIT_UNKNOWN };

    char* psz_end = ((void*)0);
    float size = us_strtof( psz, &psz_end );
    len.i_value = size;
    if( psz_end )
    {
        if( *psz_end == 'c' || *psz_end == 'r' )
            len.unit = TTML_UNIT_CELL;
        else if( *psz_end == '%' )
            len.unit = TTML_UNIT_PERCENT;
        else if( *psz_end == 'p' && *(psz_end + 1) == 'x' )
            len.unit = TTML_UNIT_PIXELS;
    }
    return len;
}
