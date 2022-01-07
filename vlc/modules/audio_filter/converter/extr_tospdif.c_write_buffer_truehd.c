
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_16__ {int i_frame_count; } ;
struct TYPE_18__ {scalar_t__ i_out_offset; TYPE_2__ truehd; TYPE_1__* p_out_buf; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_19__ {int i_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_15__ {scalar_t__ i_buffer; } ;


 int IEC61937_TRUEHD ;
 int SPDIF_ERROR ;
 int SPDIF_HEADER_SIZE ;
 int SPDIF_MORE_DATA ;
 int SPDIF_SUCCESS ;
 int TRUEHD_FRAME_OFFSET ;
 int write_buffer (TYPE_3__*,TYPE_5__*) ;
 int write_data (TYPE_3__*,char const*,int,int) ;
 int write_finalize (TYPE_3__*,int ,int) ;
 scalar_t__ write_init (TYPE_3__*,TYPE_5__*,int,int) ;
 int write_padding (TYPE_3__*,int) ;

__attribute__((used)) static int write_buffer_truehd( filter_t *p_filter, block_t *p_in_buf )
{


    filter_sys_t *p_sys = p_filter->p_sys;

    if( !p_sys->p_out_buf
     && write_init( p_filter, p_in_buf, 61440, 61440 / 16 ) )
        return SPDIF_ERROR;

    int i_padding = 0;
    if( p_sys->truehd.i_frame_count == 0 )
    {
        static const char p_mat_start_code[20] = {
            0x07, 0x9E, 0x00, 0x03, 0x84, 0x01, 0x01, 0x01, 0x80, 0x00,
            0x56, 0xA5, 0x3B, 0xF4, 0x81, 0x83, 0x49, 0x80, 0x77, 0xE0
        };
        write_data( p_filter, p_mat_start_code, 20, 1 );

        i_padding = 2560 - p_in_buf->i_buffer - 20
                  - SPDIF_HEADER_SIZE;
    }
    else if( p_sys->truehd.i_frame_count == 11 )
    {

        i_padding = 2560 - p_in_buf->i_buffer - 4;
    }
    else if( p_sys->truehd.i_frame_count == 12 )
    {
        static const char p_mat_middle_code[12] = {
            0xC3, 0xC1, 0x42, 0x49, 0x3B, 0xFA,
            0x82, 0x83, 0x49, 0x80, 0x77, 0xE0
        };
        write_data( p_filter, p_mat_middle_code, 12, 1 );
        i_padding = 2560 - p_in_buf->i_buffer - ( 12 - 4 );
    }
    else if( p_sys->truehd.i_frame_count == 23 )
    {
        static const char p_mat_end_code[16] = {
            0xC3, 0xC2, 0xC0, 0xC4, 0x00, 0x00, 0x00, 0x00,
            0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x97, 0x11
        };


        i_padding = 2560 - p_in_buf->i_buffer - 24;

        if( i_padding < 0 || p_in_buf->i_buffer + i_padding >
            p_sys->p_out_buf->i_buffer - p_sys->i_out_offset )
            return SPDIF_ERROR;

        write_buffer( p_filter, p_in_buf );
        write_padding( p_filter, i_padding );
        write_data( p_filter, p_mat_end_code, 16, 1 );
        write_finalize( p_filter, IEC61937_TRUEHD, 1 );
        p_sys->truehd.i_frame_count = 0;
        return SPDIF_SUCCESS;
    }
    else
        i_padding = 2560 - p_in_buf->i_buffer;

    if( i_padding < 0 || p_in_buf->i_buffer + i_padding >
        p_sys->p_out_buf->i_buffer - p_sys->i_out_offset )
        return SPDIF_ERROR;

    write_buffer( p_filter, p_in_buf );
    write_padding( p_filter, i_padding );
    p_sys->truehd.i_frame_count++;
    return SPDIF_MORE_DATA;
}
