#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int granulepos; int b_o_s; unsigned int bytes; void* packet; scalar_t__ packetno; scalar_t__ e_o_s; } ;
typedef  TYPE_3__ ogg_packet ;
struct TYPE_13__ {int /*<<< orphan*/  i_extra; void* p_extra; } ;
struct TYPE_12__ {int /*<<< orphan*/  p_extra; int /*<<< orphan*/  i_extra; } ;
struct TYPE_15__ {TYPE_2__ fmt_out; TYPE_1__ fmt_in; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ decoder_t ;
struct TYPE_16__ {scalar_t__ b_packetizer; } ;
typedef  TYPE_5__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 scalar_t__ VLC_SUCCESS ; 
 int XIPH_MAX_HEADER_COUNT ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*) ; 
 void* FUNC4 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned int*,void const**,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    ogg_packet oggpacket;

    unsigned pi_size[XIPH_MAX_HEADER_COUNT];
    const void *pp_data[XIPH_MAX_HEADER_COUNT];
    unsigned i_count;
    if( FUNC6( pi_size, pp_data, &i_count,
                           p_dec->fmt_in.i_extra, p_dec->fmt_in.p_extra) )
        return VLC_EGENERIC;
    if( i_count < 2 )
        return VLC_EGENERIC;;

    oggpacket.granulepos = -1;
    oggpacket.e_o_s = 0;
    oggpacket.packetno = 0;

    /* Take care of the initial Vorbis header */
    oggpacket.b_o_s = 1; /* yes this actually is a b_o_s packet :) */
    oggpacket.bytes  = pi_size[0];
    oggpacket.packet = (void *)pp_data[0];
    if( FUNC1( p_dec, &oggpacket ) != VLC_SUCCESS )
    {
        FUNC3( p_dec, "initial Speex header is corrupted" );
        return VLC_EGENERIC;;
    }

    /* The next packet in order is the comments header */
    oggpacket.b_o_s = 0;
    oggpacket.bytes  = pi_size[1];
    oggpacket.packet = (void *)pp_data[1];
    FUNC0( p_dec, &oggpacket );

    if( p_sys->b_packetizer )
    {
        void* p_extra = FUNC4( p_dec->fmt_out.p_extra,
                                 p_dec->fmt_in.i_extra );
        if( FUNC5( p_extra == NULL ) )
        {
            return VLC_ENOMEM;
        }
        p_dec->fmt_out.p_extra = p_extra;
        p_dec->fmt_out.i_extra = p_dec->fmt_in.i_extra;
        FUNC2( p_dec->fmt_out.p_extra,
                p_dec->fmt_in.p_extra, p_dec->fmt_out.i_extra );
    }

    return VLC_SUCCESS;
}