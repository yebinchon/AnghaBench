#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_12__ {int i_total_samples; int b_finished; int /*<<< orphan*/  p_chromaprint_ctx; TYPE_3__* id; } ;
typedef  TYPE_2__ sout_stream_sys_t ;
struct TYPE_13__ {int i_channels; int i_samples; } ;
typedef  TYPE_3__ sout_stream_id_sys_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_14__ {int i_buffer; struct TYPE_14__* p_next; scalar_t__ p_buffer; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int BYTESPERSAMPLE ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC5( sout_stream_t *p_stream, void *_id, block_t *p_buf )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    if ( p_sys->id != id )
    {
        /* drop the whole buffer at once */
        FUNC0( p_buf );
        return VLC_SUCCESS;
    }

    while( p_buf )
    {
        block_t *p_next;
        int i_samples = p_buf->i_buffer / (BYTESPERSAMPLE * id->i_channels);
        p_sys->i_total_samples += i_samples;
        if ( !p_sys->b_finished && id->i_samples > 0 && p_buf->i_buffer )
        {
            if(! FUNC2( p_sys->p_chromaprint_ctx,
                                   (int16_t *)p_buf->p_buffer,
                                   p_buf->i_buffer / BYTESPERSAMPLE ) )
                FUNC4( p_stream, "feed error" );
            id->i_samples -= i_samples;
            if ( id->i_samples < 1 && !p_sys->b_finished )
            {
                p_sys->b_finished = true;
                FUNC3( p_stream, "Fingerprint collection finished" );
            }
        }
        p_next = p_buf->p_next;
        FUNC1( p_buf );
        p_buf = p_next;
    }

    return VLC_SUCCESS;
}