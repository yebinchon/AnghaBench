#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_fourcc_t ;
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_25__ {scalar_t__ i_data; int /*<<< orphan*/  psz_name; int /*<<< orphan*/ * p_data; int /*<<< orphan*/  psz_mime; } ;
typedef  TYPE_2__ input_attachment_t ;
typedef  int /*<<< orphan*/  image_handler_t ;
struct TYPE_26__ {int /*<<< orphan*/ * p_pic; int /*<<< orphan*/  psz_filename; } ;
typedef  TYPE_3__ image_attach_t ;
struct TYPE_24__ {scalar_t__ i_chroma; } ;
struct TYPE_27__ {TYPE_1__ video; } ;
typedef  TYPE_4__ es_format_t ;
struct TYPE_28__ {TYPE_6__* p_sys; } ;
typedef  TYPE_5__ decoder_t ;
struct TYPE_29__ {int /*<<< orphan*/  pp_images; int /*<<< orphan*/  i_images; } ;
typedef  TYPE_6__ decoder_sys_t ;
struct TYPE_30__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_7__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_YUVA ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 int VLC_VAR_DOINHERIT ; 
 int VLC_VAR_STRING ; 
 TYPE_7__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_5__*,TYPE_2__***,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,TYPE_7__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC20( decoder_t *p_dec )
{
    decoder_sys_t        *p_sys = p_dec->p_sys;
    input_attachment_t  **pp_attachments;
    int                   i_attachments_cnt;

    if( VLC_SUCCESS != FUNC2( p_dec, &pp_attachments, &i_attachments_cnt ))
        return VLC_EGENERIC;

    for( int k = 0; k < i_attachments_cnt; k++ )
    {
        input_attachment_t *p_attach = pp_attachments[k];

        vlc_fourcc_t type = FUNC8( p_attach->psz_mime );

        if( ( type != 0 ) &&
            ( p_attach->i_data > 0 ) &&
            ( p_attach->p_data != NULL ) )
        {
            picture_t         *p_pic = NULL;
            image_handler_t   *p_image;

            p_image = FUNC6( p_dec );
            if( p_image != NULL )
            {
                block_t   *p_block;

                p_block = FUNC1( p_attach->i_data );

                if( p_block != NULL )
                {
                    es_format_t        es_in;
                    video_format_t     fmt_out;

                    FUNC11( p_block->p_buffer, p_attach->p_data, p_attach->i_data );

                    FUNC4( &es_in, VIDEO_ES, type );
                    es_in.video.i_chroma = type;
                    FUNC18( &fmt_out, VLC_CODEC_YUVA );

                    /* Find a suitable decoder module */
                    if( FUNC12( "sdl_image" ) )
                    {
                        /* ffmpeg thinks it can handle bmp properly but it can't (at least
                         * not all of them), so use sdl_image if it is available */

                        FUNC14( p_dec, "codec", VLC_VAR_STRING | VLC_VAR_DOINHERIT );
                        FUNC16( p_dec, "codec", "sdl_image" );
                    }

                    p_pic = FUNC9( p_image, p_block, &es_in, &fmt_out );
                    FUNC15( p_dec, "codec" );
                    FUNC3( &es_in );
                    FUNC17( &fmt_out );
                }

                FUNC7( p_image );
            }
            if( p_pic )
            {
                image_attach_t *p_picture = FUNC10( sizeof(image_attach_t) );

                if( p_picture )
                {
                    p_picture->psz_filename = FUNC13( p_attach->psz_name );
                    p_picture->p_pic = p_pic;

                    FUNC0( p_sys->i_images, p_sys->pp_images, p_picture );
                }
            }
        }
        FUNC19( pp_attachments[ k ] );
    }
    FUNC5( pp_attachments );

    return VLC_SUCCESS;
}