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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_9__ {int /*<<< orphan*/  pf_send; int /*<<< orphan*/  pf_del; int /*<<< orphan*/  pf_add; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_10__ {int b_finished; int b_done; int /*<<< orphan*/  p_chromaprint_ctx; int /*<<< orphan*/  p_data; int /*<<< orphan*/  i_duration; scalar_t__ i_total_samples; int /*<<< orphan*/ * id; } ;
typedef  TYPE_2__ sout_stream_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Add ; 
 int /*<<< orphan*/  CHROMAPRINT_ALGORITHM_DEFAULT ; 
 int /*<<< orphan*/  Del ; 
 int /*<<< orphan*/  Send ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_ENOVAR ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC9( vlc_object_t *p_this )
{
    sout_stream_t *p_stream = (sout_stream_t*)p_this;
    sout_stream_sys_t *p_sys;

    p_stream->p_sys = p_sys = FUNC3(sizeof(sout_stream_sys_t));
    if ( FUNC6( ! p_sys ) ) return VLC_ENOMEM;
    p_sys->id = NULL;
    p_sys->b_finished = false;
    p_sys->b_done = false;
    p_sys->i_total_samples = 0;
    p_sys->i_duration = FUNC8( p_stream, "duration" );
    p_sys->p_data = FUNC7( p_stream, "fingerprint-data" );
    if ( !p_sys->p_data )
    {
        FUNC5( p_stream, "Fingerprint data holder not set" );
        FUNC2( p_sys );
        return VLC_ENOVAR;
    }
    FUNC4( p_stream, "chromaprint version %s", FUNC0() );
    p_sys->p_chromaprint_ctx = FUNC1( CHROMAPRINT_ALGORITHM_DEFAULT );
    if ( ! p_sys->p_chromaprint_ctx )
    {
        FUNC5( p_stream, "Can't create chromaprint context" );
        FUNC2( p_sys );
        return VLC_EGENERIC;
    }
    p_stream->pf_add  = Add;
    p_stream->pf_del  = Del;
    p_stream->pf_send = Send;
    return VLC_SUCCESS;
}