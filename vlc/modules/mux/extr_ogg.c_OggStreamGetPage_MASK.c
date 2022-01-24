#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  sout_mux_t ;
typedef  int /*<<< orphan*/  ogg_stream_state ;
struct TYPE_10__ {scalar_t__ body_len; int /*<<< orphan*/  body; scalar_t__ header_len; int /*<<< orphan*/  header; } ;
typedef  TYPE_1__ ogg_page ;
struct TYPE_11__ {scalar_t__ i_length; scalar_t__ i_pts; scalar_t__ i_dts; scalar_t__ p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 TYPE_3__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__**,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static block_t *FUNC5( sout_mux_t *p_mux,
                                  ogg_stream_state *p_os, vlc_tick_t i_pts,
                                  bool flush )
{
    (void)p_mux;
    block_t *p_og, *p_og_first = NULL;
    ogg_page og;
    int (*pager)( ogg_stream_state*, ogg_page* ) = flush ? ogg_stream_flush : ogg_stream_pageout;

    while( pager( p_os, &og ) )
    {
        /* Flush all data */
        p_og = FUNC0( og.header_len + og.body_len );

        FUNC2( p_og->p_buffer, og.header, og.header_len );
        FUNC2( p_og->p_buffer + og.header_len, og.body, og.body_len );
        p_og->i_dts     = 0;
        p_og->i_pts     = i_pts;
        p_og->i_length  = 0;

        i_pts = 0; // write it only once

        FUNC1( &p_og_first, p_og );
    }

    return p_og_first;
}