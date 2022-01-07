
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_5__ {int b_au_start; int b_au_end; unsigned int i_size; int i_pts; int i_dts; int member_0; } ;
typedef TYPE_1__ sl_header_data ;
struct TYPE_6__ {int i_flags; int i_OCR_length; int i_packet_seqnum_length; int i_degradation_priority_length; int i_AU_seqnum_length; int i_instant_bitrate_length; int i_timestamp_length; int i_AU_length; int i_timestamp_resolution; } ;
typedef TYPE_2__ sl_config_descriptor_t ;
typedef int bs_t ;


 int USE_ACCESS_UNIT_END_FLAG ;
 int USE_ACCESS_UNIT_START_FLAG ;
 int USE_IDLE_FLAG ;
 int USE_PADDING_FLAG ;
 int USE_RANDOM_ACCESS_POINT_FLAG ;
 int USE_TIMESTAMPS_FLAG ;
 scalar_t__ VLC_TICK_0 ;
 int __MAX (int,int) ;
 int __MIN (int,int) ;
 int bs_init (int *,int const*,unsigned int) ;
 int bs_pos (int *) ;
 int bs_read (int *,int) ;
 void* bs_read1 (int *) ;
 scalar_t__ vlc_tick_from_samples (int,int ) ;

sl_header_data DecodeSLHeader( unsigned i_data, const uint8_t *p_data,
                               const sl_config_descriptor_t *sl )
{
    sl_header_data ret = { 0 };

    bs_t s;
    bs_init( &s, p_data, i_data );

    bool b_has_ocr = 0;
    bool b_is_idle = 0;
    bool b_has_padding = 0;
    uint8_t i_padding = 0;

    if( sl->i_flags & USE_ACCESS_UNIT_START_FLAG )
        ret.b_au_start = bs_read1( &s );
    if( sl->i_flags & USE_ACCESS_UNIT_END_FLAG )
        ret.b_au_end = bs_read1( &s );
    if( sl->i_OCR_length > 0 )
        b_has_ocr = bs_read1( &s );
    if( sl->i_flags & USE_IDLE_FLAG )
        b_is_idle = bs_read1( &s );
    if( sl->i_flags & USE_PADDING_FLAG )
        b_has_padding = bs_read1( &s );

    if( ret.b_au_end == ret.b_au_start && ret.b_au_start == 0 )
        ret.b_au_end = ret.b_au_start = 1;

    if( b_has_padding )
        i_padding = bs_read( &s, 3 );


    if( !b_is_idle && ( !b_has_padding || !i_padding ) )
    {
        bool b_has_dts = 0;
        bool b_has_cts = 0;
        bool b_has_instant_bitrate = 0;
        struct
        {
            bool *p_b;
            vlc_tick_t *p_t;
        } const timestamps[2] = { { &b_has_dts, &ret.i_dts }, { &b_has_cts, &ret.i_pts } };

        bs_read( &s, sl->i_packet_seqnum_length );

        if( sl->i_degradation_priority_length && bs_read1( &s ) )
            bs_read( &s, sl->i_degradation_priority_length );

        if( b_has_ocr )
            bs_read( &s, sl->i_OCR_length );

        if ( ret.b_au_start )
        {
            if( sl->i_flags & USE_RANDOM_ACCESS_POINT_FLAG )
                bs_read1( &s );

            bs_read( &s, sl->i_AU_seqnum_length );

            if ( sl->i_flags & USE_TIMESTAMPS_FLAG )
            {
                b_has_dts = bs_read1( &s );
                b_has_cts = bs_read1( &s );
            }

            if( sl->i_instant_bitrate_length )
                b_has_instant_bitrate = bs_read1( &s );

            for( int i=0; i<2; i++ )
            {
                if( !*(timestamps[i].p_b) )
                    continue;
                uint64_t i_read = bs_read( &s, __MIN( 32, sl->i_timestamp_length ) );
                if( sl->i_timestamp_length > 32 )
                {
                    uint8_t i_bits = __MAX( 1, sl->i_timestamp_length - 32 );
                    i_read = i_read << i_bits;
                    i_read |= bs_read( &s, i_bits );
                }
                if( sl->i_timestamp_resolution )
                    *(timestamps[i].p_t) = VLC_TICK_0 +
                        vlc_tick_from_samples(i_read, sl->i_timestamp_resolution);
            }

            bs_read( &s, sl->i_AU_length );

            if( b_has_instant_bitrate )
                bs_read( &s, sl->i_instant_bitrate_length );
        }


    }

    if ( b_has_padding && !i_padding )
        ret.i_size = i_data;
    else
        ret.i_size = (bs_pos( &s ) + 7) / 8;

    return ret;
}
