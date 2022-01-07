
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ i_clock; scalar_t__ suspended_deadline; int input_buffer; } ;
typedef TYPE_1__ cea708_t ;


 int CEA708_Decode_ServiceBuffer (TYPE_1__*) ;
 scalar_t__ VLC_TICK_INVALID ;
 int cea708_input_buffer_add (int *,int ) ;
 size_t cea708_input_buffer_remain (int *) ;
 size_t vlc_tick_from_samples (int,int) ;

void CEA708_Decoder_Push( cea708_t *h, vlc_tick_t i_time,
                          const uint8_t *p_data, size_t i_data )
{

    h->i_clock = i_time;

    for( size_t i=0; i<i_data; )
    {

        size_t i_push = cea708_input_buffer_remain(&h->input_buffer);
        if( (i_data - i) < i_push )
            i_push = (i_data - i);
        else
            h->suspended_deadline = VLC_TICK_INVALID;

        for( size_t j=0; j<i_push; j++ )
        {
            uint8_t byte = p_data[i+j];
            cea708_input_buffer_add( &h->input_buffer, byte );
        }

        if( h->suspended_deadline != VLC_TICK_INVALID )
        {

            if ( h->suspended_deadline > h->i_clock )
            {

                if( i_push )
                    h->i_clock += vlc_tick_from_samples(1, 1200) * i_push;
                continue;
            }
            h->suspended_deadline = VLC_TICK_INVALID;
        }


        CEA708_Decode_ServiceBuffer( h );

        i += i_push;
    }
}
