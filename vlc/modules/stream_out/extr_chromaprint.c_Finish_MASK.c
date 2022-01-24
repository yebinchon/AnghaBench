#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ sout_stream_t ;
struct TYPE_10__ {int i_total_samples; int b_done; int /*<<< orphan*/  i_duration; TYPE_2__* p_data; TYPE_1__* id; int /*<<< orphan*/  p_chromaprint_ctx; scalar_t__ b_finished; } ;
typedef  TYPE_4__ sout_stream_sys_t ;
struct TYPE_8__ {int i_duration; int /*<<< orphan*/  psz_fingerprint; } ;
struct TYPE_7__ {int i_samplerate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5( sout_stream_t *p_stream )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    char *psz_fingerprint = NULL;
    if ( p_sys->b_finished && FUNC1( p_sys->p_chromaprint_ctx ) )
    {
        FUNC2( p_sys->p_chromaprint_ctx,
                                     &psz_fingerprint );
        if ( psz_fingerprint )
        {
            p_sys->p_data->i_duration = p_sys->i_total_samples / p_sys->id->i_samplerate;
            p_sys->p_data->psz_fingerprint = FUNC4( psz_fingerprint );
            FUNC0( psz_fingerprint );
            FUNC3( p_stream, "DURATION=%u;FINGERPRINT=%s",
                    p_sys->p_data->i_duration,
                    p_sys->p_data->psz_fingerprint );
        }
    } else {
        FUNC3( p_stream, "Cannot create %us fingerprint (not enough samples?)",
                 p_sys->i_duration );
    }
    p_sys->b_done = true;
    FUNC3( p_stream, "Fingerprinting finished" );
}