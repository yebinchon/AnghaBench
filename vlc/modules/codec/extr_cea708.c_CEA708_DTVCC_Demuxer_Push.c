
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int uint8_t ;
typedef int int8_t ;
struct TYPE_4__ {int i_pkt_sequence; scalar_t__ i_data; scalar_t__ i_total_data; int* data; int i_time; } ;
typedef TYPE_1__ cea708_demux_t ;


 int CEA708_DTVCC_Demux_ServiceBlocks (TYPE_1__*,int ,int*,scalar_t__) ;

void CEA708_DTVCC_Demuxer_Push( cea708_demux_t *h, vlc_tick_t i_start, const uint8_t data[3] )
{
    if( (data[0] & 0x03) == 3 )
    {
        const int8_t i_pkt_sequence = data[1] >> 6;


        if( i_pkt_sequence > 0 && ((h->i_pkt_sequence + 1) % 4) != i_pkt_sequence )
        {
            h->i_data = h->i_total_data = 0;
            h->i_pkt_sequence = i_pkt_sequence;
            return;
        }

        uint8_t pktsize = data[1] & 63;
        if( pktsize == 0 )
            pktsize = 127;
        else
            pktsize = pktsize * 2 - 1;

        h->i_pkt_sequence = i_pkt_sequence;
        h->i_total_data = pktsize;
        h->i_data = 0;
        h->i_time = i_start;
        h->data[h->i_data++] = data[2];
    }
    else if( h->i_total_data > 0 )
    {
        h->data[h->i_data++] = data[1];
        h->data[h->i_data++] = data[2];
    }


    if( h->i_data > 0 && h->i_data >= h->i_total_data )
    {
        if( h->i_data == h->i_total_data )
            CEA708_DTVCC_Demux_ServiceBlocks( h, h->i_time, h->data, h->i_data );
        h->i_total_data = h->i_data = 0;
    }
}
