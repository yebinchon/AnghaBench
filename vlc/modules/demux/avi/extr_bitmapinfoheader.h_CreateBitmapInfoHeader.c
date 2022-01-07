
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_10__ {int i_rmask; int i_gmask; int i_bmask; int i_visible_height; int i_visible_width; TYPE_1__* p_palette; } ;
struct TYPE_11__ {int i_codec; scalar_t__ i_original_fourcc; size_t i_extra; TYPE_2__ video; int p_extra; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_12__ {int biClrUsed; int biSize; int biBitCount; int biPlanes; scalar_t__ biClrImportant; scalar_t__ biYPelsPerMeter; scalar_t__ biXPelsPerMeter; scalar_t__ biSizeImage; int biHeight; int biWidth; scalar_t__ biCompression; } ;
typedef TYPE_4__ VLC_BITMAPINFOHEADER ;
struct TYPE_9__ {int i_entries; int * palette; } ;


 scalar_t__ BI_BITFIELDS ;
 scalar_t__ BI_RGB ;
 int MatchBitmapRGBMasks (TYPE_3__ const*) ;
 int SetDWBE (int *,int) ;
 scalar_t__ VLC_FOURCC (char,char,char,char) ;
 TYPE_4__* malloc (int) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static inline VLC_BITMAPINFOHEADER * CreateBitmapInfoHeader( const es_format_t *fmt,
                                                             size_t *pi_total )
{
    uint16_t biBitCount = 0;
    uint32_t biCompression = 0;
    bool b_has_alpha = 0;
    switch( fmt->i_codec )
    {
        case 130:
            biBitCount = 32;
            biCompression = MatchBitmapRGBMasks( fmt ) ? BI_RGB : BI_BITFIELDS;
            break;
        case 136:
        case 129:
        case 137:
            biBitCount = 32;
            biCompression = MatchBitmapRGBMasks( fmt ) ? BI_RGB : BI_BITFIELDS;
            b_has_alpha = 1;
            break;
        case 131:
            biBitCount = 24;
            biCompression = BI_RGB;
            break;
        case 132:
        case 133:
            biBitCount = 16;
            biCompression = BI_BITFIELDS;
            break;
        case 128:
        case 135:
            biBitCount = 8;
            biCompression = BI_RGB;
            break;
        case 134:
            biCompression = VLC_FOURCC( 'X', 'V', 'I', 'D' );
            break;
        default:
            biCompression = fmt->i_original_fourcc
                ? fmt->i_original_fourcc : fmt->i_codec;
            break;
    }

    size_t i_bih_extra = 0;
    size_t i_bmiColors = 0;
    if( biCompression == BI_BITFIELDS )
        i_bmiColors = (b_has_alpha) ? 16 : 12;
    else if ( fmt->i_codec == 128 )
        i_bmiColors = fmt->video.p_palette ? (fmt->video.p_palette->i_entries * 4) : 0;
    else
        i_bih_extra = fmt->i_extra;

    VLC_BITMAPINFOHEADER *p_bih = malloc( sizeof(VLC_BITMAPINFOHEADER) +
                                          i_bih_extra + i_bmiColors );
    if( p_bih == ((void*)0) )
        return ((void*)0);

    uint8_t *p_bih_extra = (uint8_t *) &p_bih[1];
    uint8_t *p_bmiColors = p_bih_extra + i_bih_extra;
    p_bih->biClrUsed = 0;
    if( biCompression == BI_BITFIELDS )
    {
        SetDWBE( &p_bmiColors[0], fmt->video.i_rmask );
        SetDWBE( &p_bmiColors[4], fmt->video.i_gmask );
        SetDWBE( &p_bmiColors[8], fmt->video.i_bmask );
        if( b_has_alpha )
        {
            SetDWBE( &p_bmiColors[12], ~(fmt->video.i_rmask |
                                         fmt->video.i_gmask |
                                         fmt->video.i_bmask) );
        }
    }
    else if( fmt->i_codec == 128 )
    {
        for( int i = 0; i < fmt->video.p_palette->i_entries; i++ )
            memcpy( &p_bmiColors[i * 4], fmt->video.p_palette->palette[i], 4 );
        p_bih->biClrUsed = fmt->video.p_palette->i_entries;
    }
    else if( fmt->i_extra )
    {
        memcpy( p_bih_extra, fmt->p_extra, fmt->i_extra );
    }

    p_bih->biSize = sizeof(VLC_BITMAPINFOHEADER) + i_bih_extra;
    p_bih->biCompression = biCompression;
    p_bih->biBitCount = biBitCount;
    p_bih->biWidth = fmt->video.i_visible_width;
    p_bih->biHeight = fmt->video.i_visible_height;
    p_bih->biPlanes = 1;
    p_bih->biSizeImage = 0;
    p_bih->biXPelsPerMeter = 0;
    p_bih->biYPelsPerMeter = 0;
    p_bih->biClrImportant = 0;

    *pi_total = sizeof(VLC_BITMAPINFOHEADER) + i_bih_extra + i_bmiColors;
    return p_bih;
}
