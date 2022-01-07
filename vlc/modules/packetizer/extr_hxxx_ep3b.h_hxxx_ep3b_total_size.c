
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint8_t ;


 int const* hxxx_ep3b_to_rbsp (int const*,int const*,unsigned int*,int) ;

__attribute__((used)) static size_t hxxx_ep3b_total_size( const uint8_t *p, const uint8_t *p_end )
{

    unsigned i_prev = 0;
    size_t i = 0;
    while( p < p_end )
    {
        uint8_t *n = hxxx_ep3b_to_rbsp( (uint8_t *)p, (uint8_t *)p_end, &i_prev, 1 );
        if( n > p )
            ++i;
        p = n;
    }
    return i;
}
