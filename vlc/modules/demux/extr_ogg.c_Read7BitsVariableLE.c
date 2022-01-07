
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int int64_t ;


 int GetQWLE (int*) ;

unsigned const char * Read7BitsVariableLE( unsigned const char *p_begin,
                                           unsigned const char *p_end,
                                           uint64_t *pi_value )
{
    int i_shift = 0;
    int64_t i_read = 0;
    *pi_value = 0;

    while ( p_begin < p_end )
    {
        i_read = *p_begin & 0x7F;
        *pi_value = *pi_value | ( i_read << i_shift );
        i_shift += 7;
        if ( (*p_begin++ & 0x80) == 0x80 ) break;
    }

    *pi_value = GetQWLE( pi_value );
    return p_begin;
}
