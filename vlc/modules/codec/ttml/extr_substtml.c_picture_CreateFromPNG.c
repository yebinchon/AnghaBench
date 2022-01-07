
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int video_format_t ;
typedef int uint8_t ;
struct vlc_logger {int dummy; } ;
typedef int picture_t ;
typedef int image_handler_t ;
struct TYPE_14__ {int i_chroma; } ;
struct TYPE_16__ {int i_codec; TYPE_1__ video; } ;
typedef TYPE_3__ es_format_t ;
struct TYPE_15__ {int no_interact; struct vlc_logger* logger; } ;
struct TYPE_17__ {TYPE_2__ obj; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_18__ {int p_buffer; } ;
typedef TYPE_5__ block_t ;


 int VIDEO_ES ;
 int VLC_CODEC_PNG ;
 int VLC_CODEC_YUVA ;
 TYPE_5__* block_Alloc (size_t) ;
 int block_Release (TYPE_5__*) ;
 int es_format_Clean (TYPE_3__*) ;
 int es_format_Init (TYPE_3__*,int ,int ) ;
 int * image_HandlerCreate (TYPE_4__*) ;
 int image_HandlerDelete (int *) ;
 int * image_Read (int *,TYPE_5__*,TYPE_3__*,int *) ;
 int memcpy (int ,int const*,size_t) ;
 int video_format_Clean (int *) ;
 int video_format_Init (int *,int ) ;

__attribute__((used)) static picture_t * picture_CreateFromPNG( decoder_t *p_dec,
                                          const uint8_t *p_data, size_t i_data )
{
    if( i_data < 16 )
        return ((void*)0);
    video_format_t fmt_out;
    video_format_Init( &fmt_out, VLC_CODEC_YUVA );
    es_format_t es_in;
    es_format_Init( &es_in, VIDEO_ES, VLC_CODEC_PNG );
    es_in.video.i_chroma = es_in.i_codec;

    block_t *p_block = block_Alloc( i_data );
    if( !p_block )
        return ((void*)0);
    memcpy( p_block->p_buffer, p_data, i_data );

    picture_t *p_pic = ((void*)0);
    struct vlc_logger *logger = p_dec->obj.logger;
    bool no_interact = p_dec->obj.no_interact;
    p_dec->obj.logger = ((void*)0);
    p_dec->obj.no_interact = 1;
    image_handler_t *p_image = image_HandlerCreate( p_dec );
    if( p_image )
    {
        p_pic = image_Read( p_image, p_block, &es_in, &fmt_out );
        image_HandlerDelete( p_image );
    }
    else block_Release( p_block );
    p_dec->obj.no_interact = no_interact;
    p_dec->obj.logger = logger;
    es_format_Clean( &es_in );
    video_format_Clean( &fmt_out );

    return p_pic;
}
