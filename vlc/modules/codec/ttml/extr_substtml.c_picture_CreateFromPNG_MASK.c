#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_format_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct vlc_logger {int dummy; } ;
typedef  int /*<<< orphan*/  picture_t ;
typedef  int /*<<< orphan*/  image_handler_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_chroma; } ;
struct TYPE_16__ {int /*<<< orphan*/  i_codec; TYPE_1__ video; } ;
typedef  TYPE_3__ es_format_t ;
struct TYPE_15__ {int no_interact; struct vlc_logger* logger; } ;
struct TYPE_17__ {TYPE_2__ obj; } ;
typedef  TYPE_4__ decoder_t ;
struct TYPE_18__ {int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_5__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_ES ; 
 int /*<<< orphan*/  VLC_CODEC_PNG ; 
 int /*<<< orphan*/  VLC_CODEC_YUVA ; 
 TYPE_5__* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static picture_t * FUNC10( decoder_t *p_dec,
                                          const uint8_t *p_data, size_t i_data )
{
    if( i_data < 16 )
        return NULL;
    video_format_t fmt_out;
    FUNC9( &fmt_out, VLC_CODEC_YUVA );
    es_format_t es_in;
    FUNC3( &es_in, VIDEO_ES, VLC_CODEC_PNG );
    es_in.video.i_chroma = es_in.i_codec;

    block_t *p_block = FUNC0( i_data );
    if( !p_block )
        return NULL;
    FUNC7( p_block->p_buffer, p_data, i_data );

    picture_t *p_pic = NULL;
    struct vlc_logger *logger = p_dec->obj.logger;
    bool no_interact = p_dec->obj.no_interact;
    p_dec->obj.logger = NULL;
    p_dec->obj.no_interact = true;
    image_handler_t *p_image = FUNC4( p_dec );
    if( p_image )
    {
        p_pic = FUNC6( p_image, p_block, &es_in, &fmt_out );
        FUNC5( p_image );
    }
    else FUNC1( p_block );
    p_dec->obj.no_interact = no_interact;
    p_dec->obj.logger = logger;
    FUNC2( &es_in );
    FUNC8( &fmt_out );

    return p_pic;
}