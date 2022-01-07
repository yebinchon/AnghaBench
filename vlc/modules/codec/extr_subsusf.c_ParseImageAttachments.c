
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef scalar_t__ vlc_fourcc_t ;
typedef int video_format_t ;
typedef int picture_t ;
struct TYPE_25__ {scalar_t__ i_data; int psz_name; int * p_data; int psz_mime; } ;
typedef TYPE_2__ input_attachment_t ;
typedef int image_handler_t ;
struct TYPE_26__ {int * p_pic; int psz_filename; } ;
typedef TYPE_3__ image_attach_t ;
struct TYPE_24__ {scalar_t__ i_chroma; } ;
struct TYPE_27__ {TYPE_1__ video; } ;
typedef TYPE_4__ es_format_t ;
struct TYPE_28__ {TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_29__ {int pp_images; int i_images; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_30__ {int p_buffer; } ;
typedef TYPE_7__ block_t ;


 int TAB_APPEND (int ,int ,TYPE_3__*) ;
 int VIDEO_ES ;
 int VLC_CODEC_YUVA ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_VAR_DOINHERIT ;
 int VLC_VAR_STRING ;
 TYPE_7__* block_Alloc (scalar_t__) ;
 scalar_t__ decoder_GetInputAttachments (TYPE_5__*,TYPE_2__***,int*) ;
 int es_format_Clean (TYPE_4__*) ;
 int es_format_Init (TYPE_4__*,int ,scalar_t__) ;
 int free (TYPE_2__**) ;
 int * image_HandlerCreate (TYPE_5__*) ;
 int image_HandlerDelete (int *) ;
 scalar_t__ image_Mime2Fourcc (int ) ;
 int * image_Read (int *,TYPE_7__*,TYPE_4__*,int *) ;
 TYPE_3__* malloc (int) ;
 int memcpy (int ,int *,scalar_t__) ;
 scalar_t__ module_exists (char*) ;
 int strdup (int ) ;
 int var_Create (TYPE_5__*,char*,int) ;
 int var_Destroy (TYPE_5__*,char*) ;
 int var_SetString (TYPE_5__*,char*,char*) ;
 int video_format_Clean (int *) ;
 int video_format_Init (int *,int ) ;
 int vlc_input_attachment_Delete (TYPE_2__*) ;

__attribute__((used)) static int ParseImageAttachments( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    input_attachment_t **pp_attachments;
    int i_attachments_cnt;

    if( VLC_SUCCESS != decoder_GetInputAttachments( p_dec, &pp_attachments, &i_attachments_cnt ))
        return VLC_EGENERIC;

    for( int k = 0; k < i_attachments_cnt; k++ )
    {
        input_attachment_t *p_attach = pp_attachments[k];

        vlc_fourcc_t type = image_Mime2Fourcc( p_attach->psz_mime );

        if( ( type != 0 ) &&
            ( p_attach->i_data > 0 ) &&
            ( p_attach->p_data != ((void*)0) ) )
        {
            picture_t *p_pic = ((void*)0);
            image_handler_t *p_image;

            p_image = image_HandlerCreate( p_dec );
            if( p_image != ((void*)0) )
            {
                block_t *p_block;

                p_block = block_Alloc( p_attach->i_data );

                if( p_block != ((void*)0) )
                {
                    es_format_t es_in;
                    video_format_t fmt_out;

                    memcpy( p_block->p_buffer, p_attach->p_data, p_attach->i_data );

                    es_format_Init( &es_in, VIDEO_ES, type );
                    es_in.video.i_chroma = type;
                    video_format_Init( &fmt_out, VLC_CODEC_YUVA );


                    if( module_exists( "sdl_image" ) )
                    {



                        var_Create( p_dec, "codec", VLC_VAR_STRING | VLC_VAR_DOINHERIT );
                        var_SetString( p_dec, "codec", "sdl_image" );
                    }

                    p_pic = image_Read( p_image, p_block, &es_in, &fmt_out );
                    var_Destroy( p_dec, "codec" );
                    es_format_Clean( &es_in );
                    video_format_Clean( &fmt_out );
                }

                image_HandlerDelete( p_image );
            }
            if( p_pic )
            {
                image_attach_t *p_picture = malloc( sizeof(image_attach_t) );

                if( p_picture )
                {
                    p_picture->psz_filename = strdup( p_attach->psz_name );
                    p_picture->p_pic = p_pic;

                    TAB_APPEND( p_sys->i_images, p_sys->pp_images, p_picture );
                }
            }
        }
        vlc_input_attachment_Delete( pp_attachments[ k ] );
    }
    free( pp_attachments );

    return VLC_SUCCESS;
}
