
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_16__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_26__ {scalar_t__ date; TYPE_3__* p; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_23__ {int i_width; int i_height; int i_sar_num; int i_sar_den; } ;
struct TYPE_24__ {TYPE_1__ video; int i_codec; } ;
struct TYPE_27__ {TYPE_2__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_28__ {scalar_t__ psz_sdl_type; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_29__ {int i_flags; scalar_t__ i_pts; scalar_t__ i_dts; int i_buffer; int p_buffer; } ;
typedef TYPE_7__ block_t ;
struct TYPE_30__ {int w; int h; void** pixels; int pitch; TYPE_16__* format; } ;
struct TYPE_25__ {void** p_pixels; int i_pitch; } ;
struct TYPE_22__ {int BitsPerPixel; } ;
typedef TYPE_8__ SDL_Surface ;
typedef int SDL_RWops ;


 int BLOCK_FLAG_CORRUPTED ;
 int IMG_GetError () ;
 TYPE_8__* IMG_LoadTyped_RW (int *,int,char*) ;
 int SDL_FreeSurface (TYPE_8__*) ;
 int SDL_GetRGB (int ,TYPE_16__*,void**,void**,void**) ;
 int SDL_GetRGBA (int ,TYPE_16__*,void**,void**,void**,void**) ;
 int * SDL_RWFromConstMem (int ,int ) ;
 int VLCDEC_SUCCESS ;
 int VLC_CODEC_RGB16 ;
 int VLC_CODEC_RGB24 ;
 int VLC_CODEC_RGB32 ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_7__*) ;
 TYPE_4__* decoder_NewPicture (TYPE_5__*) ;
 int decoder_QueueVideo (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ decoder_UpdateVideoFormat (TYPE_5__*) ;
 int memcpy (void**,void**,int) ;
 int msg_Warn (TYPE_5__*,char*,int) ;

__attribute__((used)) static int DecodeBlock( decoder_t *p_dec, block_t *p_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    picture_t *p_pic = ((void*)0);
    SDL_Surface *p_surface;
    SDL_RWops *p_rw;

    if( p_block == ((void*)0) )
        return VLCDEC_SUCCESS;

    if( p_block->i_flags & BLOCK_FLAG_CORRUPTED )
    {
        block_Release( p_block );
        return VLCDEC_SUCCESS;
    }

    p_rw = SDL_RWFromConstMem( p_block->p_buffer, p_block->i_buffer );


    p_surface = IMG_LoadTyped_RW( p_rw, 1, (char*)p_sys->psz_sdl_type );
    if ( p_surface == ((void*)0) )
    {
        msg_Warn( p_dec, "SDL_image couldn't load the image (%s)",
                  IMG_GetError() );
        goto error;
    }

    switch ( p_surface->format->BitsPerPixel )
    {
    case 16:
        p_dec->fmt_out.i_codec = VLC_CODEC_RGB16;
        break;
    case 8:
    case 24:
        p_dec->fmt_out.i_codec = VLC_CODEC_RGB24;
        break;
    case 32:
        p_dec->fmt_out.i_codec = VLC_CODEC_RGB32;
        break;
    default:
        msg_Warn( p_dec, "unknown bits/pixel format (%d)",
                  p_surface->format->BitsPerPixel );
        goto error;
    }
    p_dec->fmt_out.video.i_width = p_surface->w;
    p_dec->fmt_out.video.i_height = p_surface->h;
    p_dec->fmt_out.video.i_sar_num = 1;
    p_dec->fmt_out.video.i_sar_den = 1;


    if( decoder_UpdateVideoFormat( p_dec ) )
        goto error;
    p_pic = decoder_NewPicture( p_dec );
    if ( p_pic == ((void*)0) ) goto error;

    switch ( p_surface->format->BitsPerPixel )
    {
        case 8:
        {
            for ( int i = 0; i < p_surface->h; i++ )
            {
                uint8_t *p_src = (uint8_t*)p_surface->pixels + i * p_surface->pitch;
                uint8_t *p_dst = p_pic->p[0].p_pixels + i * p_pic->p[0].i_pitch;
                for ( int j = 0; j < p_surface->w; j++ )
                {
                    uint8_t r, g, b;
                    SDL_GetRGB( *(p_src++), p_surface->format,
                                &r, &g, &b );
                    *(p_dst++) = r;
                    *(p_dst++) = g;
                    *(p_dst++) = b;
                }
            }
            break;
        }
        case 16:
        {
            uint8_t *p_src = p_surface->pixels;
            uint8_t *p_dst = p_pic->p[0].p_pixels;
            int i_pitch = p_pic->p[0].i_pitch < p_surface->pitch ?
                p_pic->p[0].i_pitch : p_surface->pitch;

            for ( int i = 0; i < p_surface->h; i++ )
            {
                memcpy( p_dst, p_src, i_pitch );
                p_src += p_surface->pitch;
                p_dst += p_pic->p[0].i_pitch;
            }
            break;
        }
        case 24:
        {
            for ( int i = 0; i < p_surface->h; i++ )
            {
                uint8_t *p_src = (uint8_t*)p_surface->pixels + i * p_surface->pitch;
                uint8_t *p_dst = p_pic->p[0].p_pixels + i * p_pic->p[0].i_pitch;
                for ( int j = 0; j < p_surface->w; j++ )
                {
                    uint8_t r, g, b;
                    SDL_GetRGB( *(uint32_t*)p_src, p_surface->format,
                                &r, &g, &b );
                    *(p_dst++) = r;
                    *(p_dst++) = g;
                    *(p_dst++) = b;
                    p_src += 3;
                }
            }
            break;
        }
        case 32:
        {
            for ( int i = 0; i < p_surface->h; i++ )
            {
                uint8_t *p_src = (uint8_t*)p_surface->pixels + i * p_surface->pitch;
                uint8_t *p_dst = p_pic->p[0].p_pixels + i * p_pic->p[0].i_pitch;
                for ( int j = 0; j < p_surface->w; j++ )
                {
                    uint8_t r, g, b, a;
                    SDL_GetRGBA( *(uint32_t*)p_src, p_surface->format,
                                &r, &g, &b, &a );
                    *(p_dst++) = b;
                    *(p_dst++) = g;
                    *(p_dst++) = r;
                    *(p_dst++) = a;
                    p_src += 4;
                }
            }
            break;
        }
    }

    p_pic->date = (p_block->i_pts != VLC_TICK_INVALID) ?
        p_block->i_pts : p_block->i_dts;

    decoder_QueueVideo( p_dec, p_pic );

error:
    if ( p_surface != ((void*)0) ) SDL_FreeSurface( p_surface );
    block_Release( p_block );
    return VLCDEC_SUCCESS;
}
