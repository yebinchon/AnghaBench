
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t H264_MIN_AVCC_SIZE ;

bool h264_isavcC( const uint8_t *p_buf, size_t i_buf )
{
    return ( i_buf >= H264_MIN_AVCC_SIZE &&
             p_buf[0] != 0x00 &&
             p_buf[1] != 0x00




            );
}
