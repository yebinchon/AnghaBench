#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * p_buffer; int /*<<< orphan*/ * p_es; scalar_t__ i_group; } ;
typedef  TYPE_1__ sdi_audio_t ;
struct TYPE_6__ {int /*<<< orphan*/  out; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ demux_t ;
struct TYPE_7__ {scalar_t__ i_state; TYPE_1__* p_audios; int /*<<< orphan*/  rd_telx; int /*<<< orphan*/ * p_telx_buffer; int /*<<< orphan*/ * p_es_telx; int /*<<< orphan*/  rd_wss; int /*<<< orphan*/ * p_wss_buffer; scalar_t__ b_vbi; int /*<<< orphan*/ * p_es_video; int /*<<< orphan*/ * p_current_picture; int /*<<< orphan*/ * p_line_buffer; } ;
typedef  TYPE_3__ demux_sys_t ;

/* Variables and functions */
 int MAX_AUDIOS ; 
 scalar_t__ STATE_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if ( p_sys->i_state != STATE_SYNC )
        return;

    FUNC2( p_sys->p_line_buffer );

    FUNC0( p_sys->p_current_picture );
    p_sys->p_current_picture = NULL;
    FUNC1( p_demux->out, p_sys->p_es_video );

    if ( p_sys->b_vbi )
    {
        FUNC2( p_sys->p_wss_buffer );
        p_sys->p_wss_buffer = NULL;
        FUNC3( &p_sys->rd_wss );

        if ( p_sys->p_es_telx )
        {
            FUNC1( p_demux->out, p_sys->p_es_telx );
            FUNC2( p_sys->p_telx_buffer );
            p_sys->p_telx_buffer = NULL;
            FUNC3( &p_sys->rd_telx );
        }
    }

    for ( int i = 0; i < MAX_AUDIOS; i++ )
    {
        sdi_audio_t *p_audio = &p_sys->p_audios[i];
        if ( p_audio->i_group && p_audio->p_es != NULL )
        {
            FUNC1( p_demux->out, p_audio->p_es );
            p_audio->p_es = NULL;
            FUNC2( p_audio->p_buffer );
            p_audio->p_buffer = NULL;
        }
    }
}