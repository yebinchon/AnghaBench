
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static inline bool hxxx_strip_AnnexB_startcode( const uint8_t **pp_data, size_t *pi_data )
{
    unsigned bitflow = 0;
    const uint8_t *p_data = *pp_data;
    size_t i_data = *pi_data;

    while( i_data && p_data[0] <= 1 )
    {
        bitflow = (bitflow << 1) | (!p_data[0]);
        p_data++;
        i_data--;
        if( !(bitflow & 0x01) )
        {
            if( (bitflow & 0x06) == 0x06 )
            {
                *pi_data = i_data;
                *pp_data = p_data;
                return 1;
            }
            return 0;
        }
    }
    return 0;
}
