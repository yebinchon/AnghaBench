
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef size_t uint32_t ;


 int UINT32_MAX ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int ParseVarLenInteger( const uint8_t *p_buff, size_t i_buff_len, uint64_t *pi_value_out, uint32_t *i_len_out )
{
    *i_len_out = 0;

    uint64_t i_value = 0;
    bool finished = 0;

    for( uint32_t i = 0; i < i_buff_len; i++ )
    {
        if( (( i_value >> 32 ) << 7 ) > UINT32_MAX )
        {
            return VLC_EGENERIC;
        }
        uint8_t i_byte = p_buff[i];
        i_value = ( i_value << 7 ) | ( i_byte & 0x7f );

        ( *i_len_out )++;

        if( !( i_byte & 0x80 ))
        {
            finished = 1;
            break;
        }
    }

    if( !finished )
    {
        return VLC_EGENERIC;
    }

    *pi_value_out = i_value;

    return VLC_SUCCESS;
}
