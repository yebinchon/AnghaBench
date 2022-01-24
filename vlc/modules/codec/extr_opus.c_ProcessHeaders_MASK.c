#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int granulepos; int b_o_s; unsigned int bytes; void* packet; scalar_t__ packetno; scalar_t__ e_o_s; } ;
typedef  TYPE_3__ ogg_packet ;
struct TYPE_9__ {int /*<<< orphan*/  i_rate; int /*<<< orphan*/  i_channels; } ;
struct TYPE_10__ {int i_extra; TYPE_1__ audio; int /*<<< orphan*/ * p_extra; } ;
struct TYPE_12__ {TYPE_2__ fmt_in; } ;
typedef  TYPE_4__ decoder_t ;
typedef  int /*<<< orphan*/  OpusHeader ;

/* Variables and functions */
 int FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int XIPH_MAX_HEADER_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (unsigned int*,void const**,unsigned int*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8( decoder_t *p_dec )
{
    ogg_packet oggpacket;

    unsigned pi_size[XIPH_MAX_HEADER_COUNT];
    const void *pp_data[XIPH_MAX_HEADER_COUNT];
    unsigned i_count;

    int i_extra = p_dec->fmt_in.i_extra;
    uint8_t *p_extra = p_dec->fmt_in.p_extra;

    /* If we have no header (e.g. from RTP), make one. */
    bool b_dummy_header = false;
    if( !i_extra ||
        (i_extra > 10 && FUNC2( &p_extra[2], "OpusHead", 8 )) ) /* Borked muxers */
    {
        OpusHeader header;
        FUNC5( p_dec->fmt_in.audio.i_channels,
                             p_dec->fmt_in.audio.i_rate, &header );
        if( FUNC6( &p_extra, &i_extra, &header,
                               FUNC4() ) )
            return VLC_ENOMEM;
        b_dummy_header = true;
    }

    if( FUNC7( pi_size, pp_data, &i_count,
                           i_extra, p_extra ) )
    {
        if( b_dummy_header )
            FUNC1( p_extra );
        return VLC_EGENERIC;
    }

    if( i_count < 2 )
    {
        if( b_dummy_header )
            FUNC1( p_extra );
        return VLC_EGENERIC;
    }

    oggpacket.granulepos = -1;
    oggpacket.e_o_s = 0;
    oggpacket.packetno = 0;

    /* Take care of the initial Opus header */
    oggpacket.b_o_s = 1; /* yes this actually is a b_o_s packet :) */
    oggpacket.bytes  = pi_size[0];
    oggpacket.packet = (void *)pp_data[0];
    int ret = FUNC0( p_dec, &oggpacket );

    if (ret != VLC_SUCCESS)
        FUNC3( p_dec, "initial Opus header is corrupted" );

    if( b_dummy_header )
        FUNC1( p_extra );

    return ret;
}