#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  thread; int /*<<< orphan*/ * hotkeyWindow; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  Thread ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t *)p_this;
    intf_sys_t *p_sys = FUNC1( sizeof (intf_sys_t) );

    if( p_sys == NULL )
        return VLC_ENOMEM;

    p_intf->p_sys = p_sys;
    p_sys->hotkeyWindow = NULL;
    FUNC8( &p_sys->lock );
    FUNC4( &p_sys->wait );

    if( FUNC2( &p_sys->thread, Thread, p_intf, VLC_THREAD_PRIORITY_LOW ) )
    {
        FUNC7( &p_sys->lock );
        FUNC3( &p_sys->wait );
        FUNC0( p_sys );
        p_intf->p_sys = NULL;

        return VLC_ENOMEM;
    }

    FUNC9( &p_sys->lock );
    while( p_sys->hotkeyWindow == NULL )
        FUNC5( &p_sys->wait, &p_sys->lock );
    if( p_sys->hotkeyWindow == INVALID_HANDLE_VALUE )
    {
        FUNC10( &p_sys->lock );
        FUNC6( p_sys->thread, NULL );
        FUNC7( &p_sys->lock );
        FUNC3( &p_sys->wait );
        FUNC0( p_sys );
        p_intf->p_sys = NULL;

        return VLC_ENOMEM;
    }
    FUNC10( &p_sys->lock );

    return VLC_SUCCESS;
}