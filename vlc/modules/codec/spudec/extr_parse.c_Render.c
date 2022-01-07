
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_18__ {int i_entries; int** palette; } ;
typedef TYPE_3__ video_palette_t ;
struct TYPE_19__ {int i_sar_den; TYPE_3__* p_palette; scalar_t__ i_width; scalar_t__ i_height; scalar_t__ i_y_offset; scalar_t__ i_x_offset; scalar_t__ i_visible_height; scalar_t__ i_visible_width; scalar_t__ i_sar_num; } ;
typedef TYPE_4__ video_format_t ;
typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_20__ {TYPE_10__* p_region; } ;
typedef TYPE_5__ subpicture_t ;
struct TYPE_21__ {int* p_data; int** pi_yuv; int* pi_alpha; int i_y_top_offset; scalar_t__ i_y_bottom_offset; } ;
typedef TYPE_6__ subpicture_data_t ;
struct TYPE_22__ {int i_y; int i_x; scalar_t__ i_height; scalar_t__ i_width; } ;
typedef TYPE_7__ spu_properties_t ;
typedef int decoder_t ;
struct TYPE_17__ {TYPE_1__* p; } ;
struct TYPE_16__ {int i_pitch; int * p_pixels; } ;
struct TYPE_15__ {TYPE_2__* p_picture; int i_y; int i_x; } ;


 int VLC_CODEC_YUVP ;
 int memset (int *,int,int) ;
 int msg_Err (int *,char*) ;
 TYPE_10__* subpicture_region_New (TYPE_4__*) ;
 int video_format_Clean (TYPE_4__*) ;
 int video_format_Init (TYPE_4__*,int ) ;

__attribute__((used)) static void Render( decoder_t *p_dec, subpicture_t *p_spu,
                    subpicture_data_t *p_spu_data,
                    const spu_properties_t *p_spu_properties )
{
    uint8_t *p_p;
    int i_x, i_y, i_len, i_color, i_pitch;
    const uint16_t *p_source = p_spu_data->p_data;
    video_format_t fmt;
    video_palette_t palette;


    video_format_Init( &fmt, VLC_CODEC_YUVP );
    fmt.i_sar_num = 0;
    fmt.i_sar_den = 1;
    fmt.i_width = fmt.i_visible_width = p_spu_properties->i_width;
    fmt.i_height = fmt.i_visible_height = p_spu_properties->i_height -
        p_spu_data->i_y_top_offset - p_spu_data->i_y_bottom_offset;
    fmt.i_x_offset = fmt.i_y_offset = 0;
    fmt.p_palette = &palette;
    fmt.p_palette->i_entries = 4;
    for( i_x = 0; i_x < fmt.p_palette->i_entries; i_x++ )
    {
        fmt.p_palette->palette[i_x][0] = p_spu_data->pi_yuv[i_x][0];
        fmt.p_palette->palette[i_x][1] = p_spu_data->pi_yuv[i_x][1];
        fmt.p_palette->palette[i_x][2] = p_spu_data->pi_yuv[i_x][2];
        fmt.p_palette->palette[i_x][3] = p_spu_data->pi_alpha[i_x] * 0x11;
    }

    p_spu->p_region = subpicture_region_New( &fmt );
    if( !p_spu->p_region )
    {
        fmt.p_palette = ((void*)0);
        video_format_Clean( &fmt );
        msg_Err( p_dec, "cannot allocate SPU region" );
        return;
    }

    p_spu->p_region->i_x = p_spu_properties->i_x;
    p_spu->p_region->i_y = p_spu_properties->i_y + p_spu_data->i_y_top_offset;
    p_p = p_spu->p_region->p_picture->p->p_pixels;
    i_pitch = p_spu->p_region->p_picture->p->i_pitch;


    for( i_y = 0; i_y < (int)fmt.i_height * i_pitch; i_y += i_pitch )
    {

        for( i_x = 0 ; i_x < (int)fmt.i_width; i_x += i_len )
        {

            i_color = *p_source & 0x3;
            i_len = *p_source++ >> 2;
            memset( p_p + i_x + i_y, i_color, i_len );
        }
    }

    fmt.p_palette = ((void*)0);
    video_format_Clean( &fmt );
}
