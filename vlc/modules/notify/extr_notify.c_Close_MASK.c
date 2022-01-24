#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  lock; scalar_t__ notification; int /*<<< orphan*/  player_listener; int /*<<< orphan*/  playlist; } ;
typedef  TYPE_2__ intf_sys_t ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9( vlc_object_t *p_this )
{
    intf_thread_t   *p_intf = ( intf_thread_t* ) p_this;
    intf_sys_t      *p_sys  = p_intf->p_sys;

    vlc_player_t *player = FUNC8(p_sys->playlist);
    FUNC5(player);
    FUNC6(player, p_sys->player_listener);
    FUNC7(player);

    if( p_sys->notification )
    {
        GError *p_error = NULL;
        FUNC2( p_sys->notification, &p_error );
        FUNC1( p_sys->notification );
    }

    FUNC4( &p_sys->lock );
    FUNC0( p_sys );
    FUNC3();
}