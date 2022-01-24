#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int b_packetized; int /*<<< orphan*/  i_cat; } ;
typedef  TYPE_1__ es_format_t ;
typedef  int /*<<< orphan*/  demux_t ;
struct TYPE_10__ {int /*<<< orphan*/  p_module; int /*<<< orphan*/  fmt_out; TYPE_1__ fmt_in; int /*<<< orphan*/ * pf_packetize; int /*<<< orphan*/ * pf_decode; } ;
typedef  TYPE_2__ decoder_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char const*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

decoder_t *FUNC6( demux_t *p_demux, es_format_t *p_fmt, const char *psz_msg )
{
    decoder_t *p_packetizer;
    p_packetizer = FUNC4( p_demux, sizeof( *p_packetizer ),
                                      "demux packetizer" );
    if( !p_packetizer )
    {
        FUNC0( p_fmt );
        return NULL;
    }
    p_fmt->b_packetized = false;

    p_packetizer->pf_decode = NULL;
    p_packetizer->pf_packetize = NULL;

    p_packetizer->fmt_in = *p_fmt;
    FUNC1( &p_packetizer->fmt_out, p_fmt->i_cat, 0 );

    p_packetizer->p_module = FUNC2( p_packetizer, "packetizer", NULL, false );
    if( !p_packetizer->p_module )
    {
        FUNC0( p_fmt );
        FUNC5(p_packetizer);
        FUNC3( p_demux, "cannot find packetizer for %s", psz_msg );
        return NULL;
    }

    return p_packetizer;
}