
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {int i_frame_length; int i_frame_size; scalar_t__ syncword; } ;
typedef TYPE_4__ vlc_dts_header_t ;
typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_17__ {scalar_t__ i_format; } ;
struct TYPE_18__ {TYPE_1__ audio; } ;
struct TYPE_21__ {TYPE_2__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ filter_t ;
struct TYPE_22__ {size_t i_out_offset; TYPE_3__* p_out_buf; } ;
typedef TYPE_6__ filter_sys_t ;
struct TYPE_23__ {int i_buffer; int i_nb_samples; scalar_t__ i_length; int p_buffer; } ;
typedef TYPE_7__ block_t ;
struct TYPE_19__ {size_t i_buffer; int i_length; int * p_buffer; } ;


 scalar_t__ DTS_SYNC_CORE_14BITS_BE ;
 scalar_t__ DTS_SYNC_CORE_14BITS_LE ;
 int IEC61937_DTS1 ;
 int IEC61937_DTS2 ;
 int IEC61937_DTS3 ;
 int SPDIF_ERROR ;
 int SPDIF_HEADER_SIZE ;
 int SPDIF_SUCCESS ;
 scalar_t__ VLC_CODEC_SPDIFL ;
 scalar_t__ VLC_SUCCESS ;
 int msg_Err (TYPE_5__*,char*,int) ;
 scalar_t__ vlc_dts_header_Convert14b16b (int *,size_t,int ,int,int) ;
 scalar_t__ vlc_dts_header_Parse (TYPE_4__*,int ,int) ;
 int write_buffer (TYPE_5__*,TYPE_7__*) ;
 int write_finalize (TYPE_5__*,int ,int) ;
 scalar_t__ write_init (TYPE_5__*,TYPE_7__*,int,int) ;

__attribute__((used)) static int write_buffer_dts( filter_t *p_filter, block_t *p_in_buf )
{
    uint16_t i_data_type;
    filter_sys_t *p_sys = p_filter->p_sys;


    vlc_dts_header_t core;
    if( vlc_dts_header_Parse( &core, p_in_buf->p_buffer,
                              p_in_buf->i_buffer ) != VLC_SUCCESS )
        return SPDIF_ERROR;
    p_in_buf->i_nb_samples = core.i_frame_length;
    p_in_buf->i_buffer = core.i_frame_size;

    switch( p_in_buf->i_nb_samples )
    {
    case 512:
        i_data_type = IEC61937_DTS1;
        break;
    case 1024:
        i_data_type = IEC61937_DTS2;
        break;
    case 2048:
        i_data_type = IEC61937_DTS3;
        break;
    default:
        msg_Err( p_filter, "Frame size %d not supported",
                 p_in_buf->i_nb_samples );
        return SPDIF_ERROR;
    }

    if( core.syncword == DTS_SYNC_CORE_14BITS_BE ||
        core.syncword == DTS_SYNC_CORE_14BITS_LE )
    {
        if( p_in_buf->i_buffer > p_in_buf->i_nb_samples * 4 )
            return SPDIF_ERROR;
        if( write_init( p_filter, p_in_buf, p_in_buf->i_nb_samples * 4,
                        p_in_buf->i_nb_samples ) )
            return SPDIF_ERROR;

        uint8_t *p_out = &p_sys->p_out_buf->p_buffer[p_sys->i_out_offset];
        ssize_t i_size = vlc_dts_header_Convert14b16b( p_out,
                            p_sys->p_out_buf->i_buffer - p_sys->i_out_offset,
                            p_in_buf->p_buffer, p_in_buf->i_buffer,
                            p_filter->fmt_out.audio.i_format == VLC_CODEC_SPDIFL );
        if( i_size < 0 )
            return SPDIF_ERROR;

        p_sys->i_out_offset += i_size;
        p_sys->p_out_buf->i_length += p_in_buf->i_length;
    }
    else
    {
        if( p_in_buf->i_buffer + SPDIF_HEADER_SIZE > p_in_buf->i_nb_samples * 4 )
            return SPDIF_ERROR;

        if( write_init( p_filter, p_in_buf, p_in_buf->i_nb_samples * 4,
                        p_in_buf->i_nb_samples ) )
            return SPDIF_ERROR;
        write_buffer( p_filter, p_in_buf );
    }

    write_finalize( p_filter, i_data_type, 8 );
    return SPDIF_SUCCESS;
}
