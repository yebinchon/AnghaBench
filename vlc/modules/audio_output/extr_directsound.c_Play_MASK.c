#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_4__ {int b_playing; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  p_dsbuffer; } ;
typedef  TYPE_1__ aout_stream_sys_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DSBPLAY_LOOPING ; 
 scalar_t__ DSERR_BUFFERLOST ; 
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7( vlc_object_t *obj, aout_stream_sys_t *sys,
                     block_t *p_buffer )
{
    HRESULT dsresult;
    dsresult = FUNC0( obj, sys, p_buffer );
    if( dsresult != DS_OK )
        return dsresult;

    /* start playing the buffer */
    dsresult = FUNC1( sys->p_dsbuffer, 0, 0,
                                        DSBPLAY_LOOPING );
    if( dsresult == DSERR_BUFFERLOST )
    {
        FUNC2( sys->p_dsbuffer );
        dsresult = FUNC1( sys->p_dsbuffer,
                                            0, 0, DSBPLAY_LOOPING );
    }
    if( dsresult != DS_OK )
        FUNC3( obj, "cannot start playing buffer: (hr=0x%lX)", dsresult );
    else
    {
        FUNC5( &sys->lock );
        sys->b_playing = true;
        FUNC4(&sys->cond);
        FUNC6( &sys->lock );

    }
    return dsresult;
}