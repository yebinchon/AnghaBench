#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_11__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  p_next; TYPE_3__* p_sys; } ;
typedef  TYPE_2__ sout_stream_t ;
struct TYPE_19__ {int /*<<< orphan*/  lock; TYPE_4__* id_video; TYPE_4__* id_master_sync; } ;
typedef  TYPE_3__ sout_stream_sys_t ;
struct TYPE_20__ {scalar_t__ downstream_id; TYPE_11__* p_decoder; scalar_t__ b_transcode; } ;
typedef  TYPE_4__ sout_stream_id_sys_t ;
struct TYPE_17__ {int i_cat; } ;
struct TYPE_16__ {TYPE_1__ fmt_in; } ;

/* Variables and functions */
#define  AUDIO_ES 130 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
#define  SPU_ES 129 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int UNKNOWN_ES ; 
#define  VIDEO_ES 128 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9( sout_stream_t *p_stream, void *_id )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    sout_stream_id_sys_t *id = (sout_stream_id_sys_t *)_id;

    if( id->b_transcode )
    {
        int i_cat = id->p_decoder ? id->p_decoder->fmt_in.i_cat : UNKNOWN_ES;
        switch( i_cat )
        {
        case AUDIO_ES:
            FUNC1( p_stream, id, NULL );
            FUNC2( id->p_decoder );
            FUNC7( &p_sys->lock );
            if( id == p_sys->id_master_sync )
                p_sys->id_master_sync = NULL;
            FUNC8( &p_sys->lock );
            FUNC4( p_stream, id );
            break;
        case VIDEO_ES:
            FUNC1( p_stream, id, NULL );
            FUNC2( id->p_decoder );
            FUNC7( &p_sys->lock );
            if( id == p_sys->id_video )
                p_sys->id_video = NULL;
            FUNC8( &p_sys->lock );
            FUNC6( p_stream, id );
            break;
        case SPU_ES:
            FUNC2( id->p_decoder );
            FUNC5( p_stream, id );
            break;
        default:
            break;
        }
    }
    else FUNC2( id->p_decoder );

    if( id->downstream_id ) FUNC3( p_stream->p_next, id->downstream_id );

    FUNC0( id );
}