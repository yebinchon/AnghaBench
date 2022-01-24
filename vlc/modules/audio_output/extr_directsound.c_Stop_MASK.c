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
struct TYPE_3__ {int b_playing; int /*<<< orphan*/ * p_dsobject; int /*<<< orphan*/ * p_dsbuffer; int /*<<< orphan*/ * p_notify; int /*<<< orphan*/  lock; int /*<<< orphan*/  cond; int /*<<< orphan*/  eraser_thread; } ;
typedef  TYPE_1__ aout_stream_sys_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11( aout_stream_sys_t *p_sys )
{
    FUNC9( &p_sys->lock );
    p_sys->b_playing =  true;
    FUNC6( &p_sys->cond );
    FUNC10( &p_sys->lock );
    FUNC4( p_sys->eraser_thread );
    FUNC7( p_sys->eraser_thread, NULL );
    FUNC5( &p_sys->cond );
    FUNC8( &p_sys->lock );

    if( p_sys->p_notify != NULL )
    {
        FUNC2(p_sys->p_notify );
        p_sys->p_notify = NULL;
    }
    if( p_sys->p_dsbuffer != NULL )
    {
        FUNC1( p_sys->p_dsbuffer );
        FUNC0( p_sys->p_dsbuffer );
        p_sys->p_dsbuffer = NULL;
    }
    if( p_sys->p_dsobject != NULL )
    {
        FUNC3( p_sys->p_dsobject );
        p_sys->p_dsobject = NULL;
    }
    return DS_OK;
}