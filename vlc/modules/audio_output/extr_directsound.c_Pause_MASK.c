#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int b_playing; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  p_dsbuffer; } ;
typedef  TYPE_1__ aout_stream_sys_t ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DSBPLAY_LOOPING ; 
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC5( aout_stream_sys_t *sys, bool pause )
{
    HRESULT hr;

    if( pause )
        hr = FUNC1( sys->p_dsbuffer );
    else
        hr = FUNC0( sys->p_dsbuffer, 0, 0, DSBPLAY_LOOPING );
    if( hr == DS_OK )
    {
        FUNC3( &sys->lock );
        sys->b_playing = !pause;
        if( sys->b_playing )
            FUNC2( &sys->cond );
        FUNC4( &sys->lock );
    }
    return hr;
}