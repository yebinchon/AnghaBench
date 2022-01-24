#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subtitle ;
typedef  int /*<<< orphan*/  subpicture_t ;
struct TYPE_21__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ decoder_t ;
struct TYPE_22__ {int /*<<< orphan*/  p_context; TYPE_1__* p_codec; } ;
typedef  TYPE_3__ decoder_sys_t ;
struct TYPE_23__ {int i_flags; size_t i_buffer; TYPE_5__* p_buffer; int /*<<< orphan*/  i_pts; } ;
typedef  TYPE_4__ block_t ;
struct TYPE_25__ {int size; int /*<<< orphan*/  pts; TYPE_5__* data; } ;
struct TYPE_24__ {int /*<<< orphan*/  pts; } ;
struct TYPE_20__ {scalar_t__ id; } ;
typedef  TYPE_5__ AVSubtitle ;
typedef  TYPE_6__ AVPacket ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_DVB_SUBTITLE ; 
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_DISCONTINUITY ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FF_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_5__*,int*,TYPE_6__*) ; 
 TYPE_4__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int) ; 

__attribute__((used)) static subpicture_t *FUNC10(decoder_t *dec, block_t **block_ptr)
{
    decoder_sys_t *sys = dec->p_sys;

    if (!block_ptr || !*block_ptr)
        return NULL;

    block_t *block = *block_ptr;

    if (block->i_flags & (BLOCK_FLAG_DISCONTINUITY | BLOCK_FLAG_CORRUPTED)) {
        if (block->i_flags & BLOCK_FLAG_CORRUPTED) {
            FUNC2(dec);
            FUNC7(block);
            return NULL;
        }
    }

    if (block->i_buffer <= 0) {
        FUNC7(block);
        return NULL;
    }

    *block_ptr =
    block      = FUNC6(block,
                               0,
                               block->i_buffer + FF_INPUT_BUFFER_PADDING_SIZE);
    if (!block)
        return NULL;
    block->i_buffer -= FF_INPUT_BUFFER_PADDING_SIZE;
    FUNC8(&block->p_buffer[block->i_buffer], 0, FF_INPUT_BUFFER_PADDING_SIZE);

    if( sys->p_codec->id == AV_CODEC_ID_DVB_SUBTITLE && block->i_buffer > 3 )
    {
        block->p_buffer += 2; /* drop data identifier / stream id */
        block->i_buffer -= 3; /* drop 0x3F/FF */
    }

    /* */
    AVSubtitle subtitle;
    FUNC8(&subtitle, 0, sizeof(subtitle));

    AVPacket pkt;
    FUNC4(&pkt);
    pkt.data = block->p_buffer;
    pkt.size = block->i_buffer;
    pkt.pts  = FUNC3(block->i_pts);

    int has_subtitle = 0;
    int used = FUNC5(sys->p_context,
                                        &subtitle, &has_subtitle, &pkt);

    if (used < 0) {
        FUNC9(dec, "cannot decode one subtitle (%zu bytes)",
                 block->i_buffer);

        FUNC7(block);
        return NULL;
    } else if ((size_t)used > block->i_buffer) {
        used = block->i_buffer;
    }

    block->i_buffer -= used;
    block->p_buffer += used;

    /* */
    subpicture_t *spu = NULL;
    if (has_subtitle)
        spu = FUNC0(dec, &subtitle,
                              FUNC1(subtitle.pts),
                              sys->p_context);

    /* */
    if (!spu)
        FUNC7(block);
    return spu;
}