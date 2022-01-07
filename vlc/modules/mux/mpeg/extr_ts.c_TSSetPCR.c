
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int int64_t ;
struct TYPE_3__ {int* p_buffer; } ;
typedef TYPE_1__ block_t ;


 int TO_SCALE_NZ (int ) ;

__attribute__((used)) static void TSSetPCR( block_t *p_ts, vlc_tick_t i_dts )
{
    int64_t i_pcr = TO_SCALE_NZ(i_dts);

    p_ts->p_buffer[6] = ( i_pcr >> 25 )&0xff;
    p_ts->p_buffer[7] = ( i_pcr >> 17 )&0xff;
    p_ts->p_buffer[8] = ( i_pcr >> 9 )&0xff;
    p_ts->p_buffer[9] = ( i_pcr >> 1 )&0xff;
    p_ts->p_buffer[10] = ( i_pcr << 7 )&0x80;
    p_ts->p_buffer[10] |= 0x7e;
    p_ts->p_buffer[11] = 0;
}
