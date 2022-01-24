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
struct TYPE_4__ {scalar_t__ i_refcount; scalar_t__ p_library; scalar_t__ p_renderer; scalar_t__ p_track; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ decoder_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7( decoder_sys_t *p_sys )
{
    /* */
    FUNC5( &p_sys->lock );
    p_sys->i_refcount--;
    if( p_sys->i_refcount > 0 )
    {
        FUNC6( &p_sys->lock );
        return;
    }
    FUNC6( &p_sys->lock );
    FUNC4( &p_sys->lock );

    if( p_sys->p_track )
        FUNC0( p_sys->p_track );
    if( p_sys->p_renderer )
        FUNC2( p_sys->p_renderer );
    if( p_sys->p_library )
        FUNC1( p_sys->p_library );

    FUNC3( p_sys );
}