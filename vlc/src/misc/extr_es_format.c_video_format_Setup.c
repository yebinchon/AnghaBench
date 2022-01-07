
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
struct TYPE_3__ {int i_chroma; int i_width; int i_visible_width; int i_height; int i_visible_height; int i_bits_per_pixel; int i_sar_den; int i_sar_num; scalar_t__ i_y_offset; scalar_t__ i_x_offset; } ;
typedef TYPE_1__ video_format_t ;


 int VIDEO_ES ;
 int vlc_fourcc_GetCodec (int ,int ) ;
 int vlc_ureduce (int *,int *,int,int,int ) ;

void video_format_Setup( video_format_t *p_fmt, vlc_fourcc_t i_chroma,
                         int i_width, int i_height,
                         int i_visible_width, int i_visible_height,
                         int i_sar_num, int i_sar_den )
{
    p_fmt->i_chroma = vlc_fourcc_GetCodec( VIDEO_ES, i_chroma );
    p_fmt->i_width = i_width;
    p_fmt->i_visible_width = i_visible_width;
    p_fmt->i_height = i_height;
    p_fmt->i_visible_height = i_visible_height;
    p_fmt->i_x_offset =
    p_fmt->i_y_offset = 0;
    vlc_ureduce( &p_fmt->i_sar_num, &p_fmt->i_sar_den,
                 i_sar_num, i_sar_den, 0 );

    switch( p_fmt->i_chroma )
    {
    case 133:
        p_fmt->i_bits_per_pixel = 32;
        break;
    case 135:
        p_fmt->i_bits_per_pixel = 20;
        break;
    case 134:
        p_fmt->i_bits_per_pixel = 24;
        break;
    case 154:
    case 150:
        p_fmt->i_bits_per_pixel = 24;
        break;
    case 156:
    case 131:
    case 128:
    case 139:
    case 138:
    case 152:
        p_fmt->i_bits_per_pixel = 16;
        break;
    case 155:
    case 151:
        p_fmt->i_bits_per_pixel = 16;
        break;
    case 148:
        p_fmt->i_bits_per_pixel = 15;
        break;
    case 147:
        p_fmt->i_bits_per_pixel = 20;
        break;
    case 158:
    case 130:
    case 157:
    case 153:
    case 149:
        p_fmt->i_bits_per_pixel = 12;
        break;
    case 129:
    case 159:
        p_fmt->i_bits_per_pixel = 9;
        break;
    case 136:
        p_fmt->i_bits_per_pixel = 8;
        break;
    case 132:
        p_fmt->i_bits_per_pixel = 8;
        break;

    case 143:
    case 141:
    case 166:
    case 165:
        p_fmt->i_bits_per_pixel = 32;
        break;
    case 144:
        p_fmt->i_bits_per_pixel = 24;
        break;
    case 146:
    case 145:
        p_fmt->i_bits_per_pixel = 16;
        break;
    case 142:
        p_fmt->i_bits_per_pixel = 8;
        break;

    case 164:
    case 140:
        p_fmt->i_bits_per_pixel = 8;
        break;

    case 163:
    case 162:
        p_fmt->i_bits_per_pixel = 10;
        break;

    case 161:
    case 160:
        p_fmt->i_bits_per_pixel = 12;
        break;

    case 137:
        p_fmt->i_bits_per_pixel = 48;
        break;

    default:
        p_fmt->i_bits_per_pixel = 0;
        break;
    }
}
