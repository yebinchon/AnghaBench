
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int ts_header ;


 int memcpy (int*,int const*,int) ;
 int memset (int*,int,int) ;

__attribute__((used)) static void writeTsPacketWDiscontinuity( uint8_t *p_buf, uint16_t i_pid,
                                         const uint8_t *p_payload, uint8_t i_payload )
{
    uint8_t ts_header[] = {
        0x00, 0x00, 0x00, 0x00,
        0x47,
        0x40 | ((i_pid & 0x1f00) >> 8), i_pid & 0xFF,
        i_payload ? 0x30 : 0x20,
        192 - (4 + 5) - i_payload,
        0x82,
        0x0E,
         'V', 'L', 'C', '_',
         'D', 'I', 'S', 'C', 'O', 'N', 'T', 'I', 'N', 'U',
    };

    memcpy( p_buf, ts_header, sizeof(ts_header) );
    memset( &p_buf[sizeof(ts_header)], 0xFF, 192 - sizeof(ts_header) - i_payload );
    if( i_payload )
        memcpy( &p_buf[192 - i_payload], p_payload, i_payload );
}
