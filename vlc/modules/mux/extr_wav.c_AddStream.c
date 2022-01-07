
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


typedef int uint16_t ;
struct TYPE_19__ {TYPE_6__* p_sys; } ;
typedef TYPE_5__ sout_mux_t ;
struct TYPE_15__ {int member_0; int member_3; int member_5; int member_6; int member_7; int member_4; int member_2; int member_1; } ;
struct TYPE_23__ {int member_2; int Data1; TYPE_1__ member_3; int member_1; int member_0; } ;
struct TYPE_16__ {int wValidBitsPerSample; } ;
struct TYPE_22__ {int cbSize; int wBitsPerSample; int nBlockAlign; void* nAvgBytesPerSec; void* nSamplesPerSec; int nChannels; int wFormatTag; } ;
struct TYPE_14__ {TYPE_9__ SubFormat; void* dwChannelMask; TYPE_2__ Samples; TYPE_8__ Format; } ;
struct TYPE_20__ {int b_used; int i_channel_mask; int i_chans_to_reorder; int b_ext; TYPE_11__ waveformat; void** waveheader2; void** waveheader; int pi_chan_table; } ;
typedef TYPE_6__ sout_mux_sys_t ;
struct TYPE_21__ {TYPE_4__* p_fmt; } ;
typedef TYPE_7__ sout_input_t ;
typedef int WAVEFORMATEXTENSIBLE ;
typedef TYPE_8__ WAVEFORMATEX ;
struct TYPE_17__ {int i_channels; int i_rate; int i_physical_channels; int i_bitspersample; } ;
struct TYPE_18__ {scalar_t__ i_cat; TYPE_3__ audio; int i_codec; } ;
typedef TYPE_9__ GUID ;


 scalar_t__ AUDIO_ES ;
 int SetDWLE (void**,int) ;
 int SetWLE (int *,int) ;
 int VLC_EGENERIC ;
 void* VLC_FOURCC (char,char,char,char) ;
 int VLC_SUCCESS ;
 int WAVE_FORMAT_EXTENSIBLE ;
 int aout_CheckChannelReorder (int*,int ,int,int ) ;
 int fourcc_to_wf_tag (int ,int*) ;
 int memset (TYPE_11__*,int ,int) ;
 int msg_Dbg (TYPE_5__*,char*,...) ;
 int* pi_channels_in ;
 int pi_channels_out ;
 unsigned int* pi_vlc_chan_order_wg4 ;

__attribute__((used)) static int AddStream( sout_mux_t *p_mux, sout_input_t *p_input )
{
    GUID subformat_guid = {0, 0, 0x10,{0x80, 0, 0, 0xaa, 0, 0x38, 0x9b, 0x71}};
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    WAVEFORMATEX *p_waveformat = &p_sys->waveformat.Format;
    int i_bytes_per_sample;
    uint16_t i_format;
    bool b_ext;

    if( p_input->p_fmt->i_cat != AUDIO_ES )
    {
        msg_Dbg( p_mux, "not an audio stream" );
        return VLC_EGENERIC;
    }

    if( p_sys->b_used )
    {
        msg_Dbg( p_mux, "can't add more than 1 stream" );
        return VLC_EGENERIC;
    }

    msg_Dbg( p_mux, "adding %i input channels, %iHz",
             p_input->p_fmt->audio.i_channels,
             p_input->p_fmt->audio.i_rate );

    p_sys->i_channel_mask = 0;
    if( p_input->p_fmt->audio.i_physical_channels )
    {
        for( unsigned i = 0; i < pi_vlc_chan_order_wg4[i]; i++ )
            if( p_input->p_fmt->audio.i_physical_channels & pi_vlc_chan_order_wg4[i])
                p_sys->i_channel_mask |= pi_channels_in[i];

        p_sys->i_chans_to_reorder =
            aout_CheckChannelReorder( pi_channels_in, pi_channels_out,
                                      p_sys->i_channel_mask,
                                      p_sys->pi_chan_table );

        msg_Dbg( p_mux, "channel mask: %x, reordering: %u",
                 p_sys->i_channel_mask, p_sys->i_chans_to_reorder );
    }

    fourcc_to_wf_tag( p_input->p_fmt->i_codec, &i_format );
    b_ext = p_sys->b_ext = p_input->p_fmt->audio.i_channels > 2;


    p_sys->waveheader[0] = VLC_FOURCC('R', 'I', 'F', 'F');
    SetDWLE( &p_sys->waveheader[1], 0 );
    p_sys->waveheader[2] = VLC_FOURCC('W', 'A', 'V', 'E');
    p_sys->waveheader[3] = VLC_FOURCC('f', 'm', 't', ' ');
    SetDWLE( &p_sys->waveheader[4], b_ext ? 40 : 16 );

    p_sys->waveheader2[0] = VLC_FOURCC('d', 'a', 't', 'a');
    SetDWLE( &p_sys->waveheader2[1], 0 );


    memset( &p_sys->waveformat, 0, sizeof(WAVEFORMATEXTENSIBLE) );
    SetWLE( &p_waveformat->wFormatTag,
            b_ext ? WAVE_FORMAT_EXTENSIBLE : i_format );
    SetWLE( &p_waveformat->nChannels,
            p_input->p_fmt->audio.i_channels );
    SetDWLE( &p_waveformat->nSamplesPerSec, p_input->p_fmt->audio.i_rate );
    i_bytes_per_sample = p_input->p_fmt->audio.i_channels *
        p_input->p_fmt->audio.i_bitspersample / 8;
    SetDWLE( &p_waveformat->nAvgBytesPerSec,
             i_bytes_per_sample * p_input->p_fmt->audio.i_rate );
    SetWLE( &p_waveformat->nBlockAlign, i_bytes_per_sample );
    SetWLE( &p_waveformat->wBitsPerSample,
            p_input->p_fmt->audio.i_bitspersample );
    SetWLE( &p_waveformat->cbSize, 22 );
    SetWLE( &p_sys->waveformat.Samples.wValidBitsPerSample,
            p_input->p_fmt->audio.i_bitspersample );
    SetDWLE( &p_sys->waveformat.dwChannelMask,
             p_sys->i_channel_mask );
    p_sys->waveformat.SubFormat = subformat_guid;
    p_sys->waveformat.SubFormat.Data1 = i_format;


    p_sys->b_used = 1;

    return VLC_SUCCESS;
}
