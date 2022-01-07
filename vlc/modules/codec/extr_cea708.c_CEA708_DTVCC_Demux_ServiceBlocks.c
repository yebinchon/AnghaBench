
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_3__ {int priv; int (* p_callback ) (int ,int,int ,int const*,int const) ;} ;
typedef TYPE_1__ cea708_demux_t ;


 int stub1 (int ,int,int ,int const*,int const) ;

__attribute__((used)) static void CEA708_DTVCC_Demux_ServiceBlocks( cea708_demux_t *h, vlc_tick_t i_start,
                                              const uint8_t *p_data, size_t i_data )
{
    while( i_data >= 2 )
    {
        uint8_t i_sid = p_data[0] >> 5;
        const uint8_t i_block_size = p_data[0] & 0x1F;

        if( i_block_size == 0 || i_block_size > i_data - 1 )
        {
            return;
        }
        else if( i_sid == 0x07 )
        {
            i_sid = p_data[1] & 0x3F;
            if( i_sid < 0x07 )
                return;
            p_data += 1; i_data -= 1;
        }
        p_data += 1; i_data -= 1;

        h->p_callback( h->priv, i_sid, i_start, p_data, i_block_size );

        p_data += i_block_size;
        i_data -= i_block_size;
    }
}
