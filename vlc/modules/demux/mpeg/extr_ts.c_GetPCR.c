
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int stime_t ;
struct TYPE_3__ {int* p_buffer; int i_buffer; } ;
typedef TYPE_1__ block_t ;


 scalar_t__ likely (int) ;

__attribute__((used)) static stime_t GetPCR( const block_t *p_pkt )
{
    const uint8_t *p = p_pkt->p_buffer;

    stime_t i_pcr = -1;

    if( likely(p_pkt->i_buffer > 11) &&
        ( p[3]&0x20 ) &&
        ( p[5]&0x10 ) &&
        ( p[4] >= 7 ) )
    {

        i_pcr = ( (stime_t)p[6] << 25 ) |
                ( (stime_t)p[7] << 17 ) |
                ( (stime_t)p[8] << 9 ) |
                ( (stime_t)p[9] << 1 ) |
                ( (stime_t)p[10] >> 7 );
    }
    return i_pcr;
}
