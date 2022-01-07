
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;


 unsigned int INT_MAX ;

void h264_AVC_to_AnnexB( uint8_t *p_buf, uint32_t i_len,
                             uint8_t i_nal_length_size )
{
    uint32_t nal_len = 0;
    uint8_t nal_pos = 0;

    if( i_nal_length_size != 4 )
        return;



    while( i_len > 0 )
    {
        if( nal_pos < i_nal_length_size ) {
            unsigned int i;
            for( i = 0; nal_pos < i_nal_length_size && i < i_len; i++, nal_pos++ ) {
                nal_len = (nal_len << 8) | p_buf[i];
                p_buf[i] = 0;
            }
            if( nal_pos < i_nal_length_size )
                return;
            p_buf[i - 1] = 1;
            p_buf += i;
            i_len -= i;
        }
        if( nal_len > INT_MAX )
            return;
        if( nal_len > i_len )
        {
            nal_len -= i_len;
            return;
        }
        else
        {
            p_buf += nal_len;
            i_len -= nal_len;
            nal_len = 0;
            nal_pos = 0;
        }
    }
}
