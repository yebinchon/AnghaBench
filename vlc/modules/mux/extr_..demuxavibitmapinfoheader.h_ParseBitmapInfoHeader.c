
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int video_palette_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct bitmapinfoheader_properties {int i_stride; int b_flipped; } ;
struct TYPE_11__ {int i_height; int i_visible_height; int i_sar_den; int i_sar_num; TYPE_1__* p_palette; void* i_bmask; void* i_gmask; void* i_rmask; } ;
struct TYPE_9__ {scalar_t__ i_codec; size_t i_extra; TYPE_4__ video; int * p_extra; } ;
typedef TYPE_2__ es_format_t ;
struct TYPE_10__ {scalar_t__ biCompression; int biBitCount; int biClrUsed; int biWidth; int biHeight; } ;
typedef TYPE_3__ VLC_BITMAPINFOHEADER ;
struct TYPE_8__ {int i_entries; int ** palette; } ;


 scalar_t__ BI_BITFIELDS ;
 scalar_t__ BI_RGB ;
 void* GetDWLE (int const*) ;
 int INT32_MAX ;
 int INT_MAX ;
 int SetBitmapRGBMasks (scalar_t__,TYPE_2__*) ;
 scalar_t__ VLC_CODEC_BGRA ;
 scalar_t__ VLC_CODEC_GREY ;
 scalar_t__ VLC_CODEC_I410 ;
 scalar_t__ VLC_CODEC_RGB15 ;
 scalar_t__ VLC_CODEC_RGB16 ;
 scalar_t__ VLC_CODEC_RGB24 ;
 scalar_t__ VLC_CODEC_RGB32 ;
 scalar_t__ VLC_CODEC_RGBP ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int __MIN (size_t,int) ;
 void* malloc (size_t) ;
 int memcpy (int *,int const*,size_t) ;
 scalar_t__ unlikely (int ) ;
 int video_format_Setup (TYPE_4__*,scalar_t__,int,int,int,int,int ,int ) ;

__attribute__((used)) static inline int ParseBitmapInfoHeader( VLC_BITMAPINFOHEADER *p_bih, size_t i_bih,
                                         es_format_t *fmt,
                                         struct bitmapinfoheader_properties *p_props )
{

    const uint8_t *p_bihextra = (const uint8_t *) &p_bih[1];
    size_t i_bihextra;
    if( i_bih <= INT_MAX - sizeof(VLC_BITMAPINFOHEADER) &&
            i_bih >= sizeof(VLC_BITMAPINFOHEADER) )
        i_bihextra = i_bih - sizeof(VLC_BITMAPINFOHEADER);
    else
        i_bihextra = 0;

    if( p_bih->biCompression == BI_RGB ||
        p_bih->biCompression == BI_BITFIELDS )
    {
        switch( p_bih->biBitCount )
        {
            case 32:
                fmt->i_codec = VLC_CODEC_RGB32;
                SetBitmapRGBMasks( fmt->i_codec, fmt );
                break;
            case 24:
                fmt->i_codec = VLC_CODEC_RGB24;
                SetBitmapRGBMasks( fmt->i_codec, fmt );
                break;
            case 16:
                fmt->i_codec = VLC_CODEC_RGB16;
                SetBitmapRGBMasks( fmt->i_codec, fmt );
                break;
            case 15:
                fmt->i_codec = VLC_CODEC_RGB15;
                SetBitmapRGBMasks( fmt->i_codec, fmt );
                break;
            case 9:
                fmt->i_codec = VLC_CODEC_I410;
                break;
            case 8:
                if ( p_bih->biClrUsed )
                    fmt->i_codec = VLC_CODEC_RGBP;
                else
                    fmt->i_codec = VLC_CODEC_GREY;
                break;
            default:
                if( p_bih->biClrUsed < 8 )
                    fmt->i_codec = VLC_CODEC_RGBP;
                break;
        }

        if( p_bih->biCompression == BI_BITFIELDS )
        {
            if( i_bihextra >= 3 * sizeof(uint32_t) )
            {
                fmt->video.i_rmask = GetDWLE( &p_bihextra[0] );
                fmt->video.i_gmask = GetDWLE( &p_bihextra[4] );
                fmt->video.i_bmask = GetDWLE( &p_bihextra[8] );
                if( i_bihextra >= 4 * sizeof(uint32_t) )
                {
                    uint32_t i_alpha = GetDWLE( &p_bihextra[8] );
                    if( fmt->i_codec == VLC_CODEC_RGB32 && i_alpha == 0xFF )
                        fmt->i_codec = VLC_CODEC_BGRA;
                }
            }
            SetBitmapRGBMasks( fmt->i_codec, fmt );
        }
        else if( fmt->i_codec == VLC_CODEC_RGBP )
        {


            fmt->video.p_palette = malloc( sizeof(video_palette_t) );
            if ( fmt->video.p_palette )
            {
                fmt->video.p_palette->i_entries = __MIN(i_bihextra/4, 256);
                for( int k = 0; k < fmt->video.p_palette->i_entries; k++ )
                {
                    for( int j = 0; j < 4; j++ )
                        fmt->video.p_palette->palette[k][j] = p_bihextra[4*k+j];
                }
            }
        }

        p_props->i_stride = p_bih->biWidth * (p_bih->biBitCount >> 3);


        if ( p_bih->biHeight <= INT32_MAX )
            p_props->b_flipped = 1;


    }
    else
    {
        fmt->i_codec = p_bih->biCompression;


        if( i_bihextra > 0 )
        {
            fmt->p_extra = malloc( i_bihextra );
            if( unlikely(fmt->p_extra == ((void*)0)) )
                return VLC_ENOMEM;
            fmt->i_extra = i_bihextra;
            memcpy( fmt->p_extra, p_bihextra, i_bihextra );
        }


        SetBitmapRGBMasks( fmt->i_codec, fmt );
    }

    video_format_Setup( &fmt->video, fmt->i_codec,
                        p_bih->biWidth, p_bih->biHeight,
                        p_bih->biWidth, p_bih->biHeight,
                        fmt->video.i_sar_num, fmt->video.i_sar_den );




    if ( fmt->video.i_height > INT32_MAX )
    {
        fmt->video.i_visible_height =
        fmt->video.i_height = -1 * p_bih->biHeight;
    }

    return VLC_SUCCESS;
}
