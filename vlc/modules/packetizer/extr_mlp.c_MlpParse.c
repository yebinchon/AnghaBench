
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int i_type; unsigned int i_channels; int i_rate; int i_samples; int b_vbr; int i_bitrate; int i_substreams; scalar_t__ i_channels_conf; } ;
typedef TYPE_1__ mlp_header_t ;
typedef int bs_t ;


 scalar_t__ MLP_HEADER_SYNC ;
 void* TrueHdChannels (int const) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int bs_init (int *,int const*,scalar_t__) ;
 int bs_read (int *,int) ;
 int bs_skip (int *,int) ;
 int memcmp (int const*,int ,int) ;
 int pu_start_code ;

__attribute__((used)) static int MlpParse( mlp_header_t *p_mlp, const uint8_t p_hdr[MLP_HEADER_SYNC] )
{
    bs_t s;

    assert( !memcmp( p_hdr, pu_start_code, 3 ) );




    bs_init( &s, &p_hdr[3], MLP_HEADER_SYNC - 3 );


    p_mlp->i_type = bs_read( &s, 8 );
    int i_rate_idx1;

    if( p_mlp->i_type == 0xbb )
    {
        static const unsigned pu_channels[32] = {
            1, 2, 3, 4, 3, 4, 5, 3, 4, 5, 4, 5, 6, 4, 5, 4,
            5, 6, 5, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        };

        bs_skip( &s, 4 + 4 );

        i_rate_idx1 = bs_read( &s, 4 );



        bs_skip( &s, 4 );

        bs_skip( &s, 11 );

        const int i_channel_idx = bs_read( &s, 5 );
        p_mlp->i_channels = pu_channels[i_channel_idx];
    }
    else if( p_mlp->i_type == 0xba )
    {
        i_rate_idx1 = bs_read( &s, 4 );

        bs_skip( &s, 8 );

        const int i_channel1 = bs_read( &s, 5 );

        bs_skip( &s, 2 );

        const int i_channel2 = bs_read( &s, 13 );
        if( i_channel2 )
            p_mlp->i_channels = TrueHdChannels( i_channel2 );
        else
            p_mlp->i_channels = TrueHdChannels( i_channel1 );
    }
    else
    {
        return VLC_EGENERIC;
    }

    if( i_rate_idx1 == 0x0f )
        p_mlp->i_rate = 0;
    else
        p_mlp->i_rate = ( ( i_rate_idx1 & 0x8 ) ? 44100 : 48000 ) << (i_rate_idx1 & 0x7);
    p_mlp->i_channels_conf = 0;

    p_mlp->i_samples = 40 << ( i_rate_idx1 & 0x07 );

    bs_skip( &s, 48 );

    p_mlp->b_vbr = bs_read( &s, 1 );
    p_mlp->i_bitrate = ( bs_read( &s, 15 ) * p_mlp->i_rate + 8) / 16;

    p_mlp->i_substreams = bs_read( &s, 4 );
    bs_skip( &s, 4 + 11 * 8 );



    return VLC_SUCCESS;
}
