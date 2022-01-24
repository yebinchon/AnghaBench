#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_15__ {int /*<<< orphan*/  p_fifo; } ;
typedef  TYPE_1__ sout_input_t ;
struct TYPE_16__ {int /*<<< orphan*/  tinfo; scalar_t__ extrabuilder; } ;
typedef  TYPE_2__ mp4_stream_t ;
struct TYPE_17__ {int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_18__ {int i_codec; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 (TYPE_3__*) ; 
#define  VLC_CODEC_AV1 131 
#define  VLC_CODEC_H264 130 
#define  VLC_CODEC_HEVC 129 
#define  VLC_CODEC_SUBT 128 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_3__*,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (scalar_t__,int /*<<< orphan*/  const**) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static block_t * FUNC10(sout_input_t *p_input, mp4_stream_t *p_stream)
{
    block_t *p_block = FUNC2(p_input->p_fifo);
    if(FUNC9(!p_block))
        return NULL;

    /* Create on the fly extradata as packetizer is not in the loop */
    if(p_stream->extrabuilder && !FUNC5(p_stream->tinfo))
    {
         FUNC7(p_stream->extrabuilder,
                                    p_block->p_buffer, p_block->i_buffer);
         const uint8_t *p_extra;
         size_t i_extra = FUNC8(p_stream->extrabuilder, &p_extra);
         if(i_extra)
            FUNC6(p_stream->tinfo, p_extra, i_extra);
    }

    switch(FUNC4(p_stream->tinfo)->i_codec)
    {
        case VLC_CODEC_AV1:
            p_block = FUNC0(p_block);
            break;
        case VLC_CODEC_H264:
        case VLC_CODEC_HEVC:
            p_block = FUNC3(p_block, 4);
            break;
        case VLC_CODEC_SUBT:
            p_block = FUNC1(p_block);
            break;
        default:
            break;
    }

    return p_block;
}