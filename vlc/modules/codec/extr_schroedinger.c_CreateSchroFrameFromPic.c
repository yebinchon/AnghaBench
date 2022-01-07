
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct picture_free_t {TYPE_5__* p_dec; TYPE_4__* p_pic; } ;
struct TYPE_18__ {int b_progressive; int i_nb_fields; int b_top_field_first; TYPE_1__* p; } ;
typedef TYPE_4__ picture_t ;
struct TYPE_19__ {TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_20__ {TYPE_3__* p_format; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_21__ {int format; TYPE_2__* components; int height; int width; } ;
struct TYPE_17__ {scalar_t__ chroma_format; int top_field_first; int interlaced; int height; int width; } ;
struct TYPE_16__ {int stride; int length; int h_shift; int v_shift; int data; int height; int width; } ;
struct TYPE_15__ {int i_pitch; int i_lines; int p_pixels; int i_visible_lines; int i_visible_pitch; } ;
typedef TYPE_7__ SchroFrame ;


 scalar_t__ SCHRO_CHROMA_422 ;
 scalar_t__ SCHRO_CHROMA_444 ;
 int SCHRO_FRAME_FORMAT_H_SHIFT (int ) ;
 int SCHRO_FRAME_FORMAT_U8_420 ;
 int SCHRO_FRAME_FORMAT_U8_422 ;
 int SCHRO_FRAME_FORMAT_U8_444 ;
 int SCHRO_FRAME_FORMAT_V_SHIFT (int ) ;
 int SchroFrameFree ;
 TYPE_4__* decoder_NewPicture (TYPE_5__*) ;
 scalar_t__ decoder_UpdateVideoFormat (TYPE_5__*) ;
 struct picture_free_t* malloc (int) ;
 TYPE_7__* schro_frame_new () ;
 int schro_frame_set_free_callback (TYPE_7__*,int ,struct picture_free_t*) ;

__attribute__((used)) static SchroFrame *CreateSchroFrameFromPic( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    SchroFrame *p_schroframe = schro_frame_new();
    picture_t *p_pic = ((void*)0);
    struct picture_free_t *p_free;

    if( !p_schroframe )
        return ((void*)0);

    if( decoder_UpdateVideoFormat( p_dec ) )
        return ((void*)0);
    p_pic = decoder_NewPicture( p_dec );

    if( !p_pic )
        return ((void*)0);

    p_schroframe->format = SCHRO_FRAME_FORMAT_U8_420;
    if( p_sys->p_format->chroma_format == SCHRO_CHROMA_422 )
    {
        p_schroframe->format = SCHRO_FRAME_FORMAT_U8_422;
    }
    else if( p_sys->p_format->chroma_format == SCHRO_CHROMA_444 )
    {
        p_schroframe->format = SCHRO_FRAME_FORMAT_U8_444;
    }

    p_schroframe->width = p_sys->p_format->width;
    p_schroframe->height = p_sys->p_format->height;

    p_free = malloc( sizeof( *p_free ) );
    p_free->p_pic = p_pic;
    p_free->p_dec = p_dec;
    schro_frame_set_free_callback( p_schroframe, SchroFrameFree, p_free );

    for( int i=0; i<3; i++ )
    {
        p_schroframe->components[i].width = p_pic->p[i].i_visible_pitch;
        p_schroframe->components[i].stride = p_pic->p[i].i_pitch;
        p_schroframe->components[i].height = p_pic->p[i].i_visible_lines;
        p_schroframe->components[i].length =
            p_pic->p[i].i_pitch * p_pic->p[i].i_lines;
        p_schroframe->components[i].data = p_pic->p[i].p_pixels;

        if(i!=0)
        {
            p_schroframe->components[i].v_shift =
                SCHRO_FRAME_FORMAT_V_SHIFT( p_schroframe->format );
            p_schroframe->components[i].h_shift =
                SCHRO_FRAME_FORMAT_H_SHIFT( p_schroframe->format );
        }
    }

    p_pic->b_progressive = !p_sys->p_format->interlaced;
    p_pic->b_top_field_first = p_sys->p_format->top_field_first;
    p_pic->i_nb_fields = 2;

    return p_schroframe;
}
