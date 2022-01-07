
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_frame_size; unsigned int i_frame_length; } ;
typedef TYPE_1__ vlc_dts_header_t ;
typedef int uint8_t ;


 int VLC_DTS_HEADER_SIZE ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_UNUSED (unsigned int*) ;
 scalar_t__ vlc_dts_header_Parse (TYPE_1__*,int const*,int ) ;

__attribute__((used)) static int DtsCheckSync( const uint8_t *p_peek, unsigned *pi_samples )
{
    VLC_UNUSED(pi_samples);

    vlc_dts_header_t dts;
    if( vlc_dts_header_Parse( &dts, p_peek, VLC_DTS_HEADER_SIZE ) == VLC_SUCCESS
     && dts.i_frame_size > 0 && dts.i_frame_size <= 8192 )
    {
        if( pi_samples )
            *pi_samples = dts.i_frame_length;
        return dts.i_frame_size;
    }
    else
        return VLC_EGENERIC;
}
