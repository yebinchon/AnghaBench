#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  p_pattern ;
struct TYPE_6__ {int i_extra; int* p_extra; scalar_t__ i_codec; } ;
struct TYPE_7__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_8__ {int* extradata; int extradata_size; } ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ FF_INPUT_BUFFER_PADDING_SIZE ; 
 scalar_t__ VLC_CODEC_ALAC ; 
 int FUNC0 (int,int) ; 
 int* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int const*,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5( decoder_t *p_dec, AVCodecContext *p_context )
{
    if( p_dec->fmt_in.i_extra > 0 )
    {
        const uint8_t * const p_src = p_dec->fmt_in.p_extra;

        int i_offset = 0;
        int i_size = p_dec->fmt_in.i_extra;

        if( p_dec->fmt_in.i_codec == VLC_CODEC_ALAC )
        {
            static const uint8_t p_pattern[] = { 0, 0, 0, 36, 'a', 'l', 'a', 'c' };
            /* Find alac atom XXX it is a bit ugly */
            for( i_offset = 0; i_offset < i_size - (int)sizeof(p_pattern); i_offset++ )
            {
                if( !FUNC2( &p_src[i_offset], p_pattern, sizeof(p_pattern) ) )
                    break;
            }
            i_size = FUNC0( p_dec->fmt_in.i_extra - i_offset, 36 );
            if( i_size < 36 )
                i_size = 0;
        }

        if( i_size > 0 )
        {
            p_context->extradata =
                FUNC1( i_size + FF_INPUT_BUFFER_PADDING_SIZE );
            if( p_context->extradata )
            {
                uint8_t *p_dst = p_context->extradata;

                p_context->extradata_size = i_size;

                FUNC3( &p_dst[0],            &p_src[i_offset], i_size );
                FUNC4( &p_dst[i_size], 0, FF_INPUT_BUFFER_PADDING_SIZE );
            }
        }
    }
    else
    {
        p_context->extradata_size = 0;
        p_context->extradata = NULL;
    }
}