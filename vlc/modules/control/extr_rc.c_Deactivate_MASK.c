#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_6__ {int i_socket; int /*<<< orphan*/  status_lock; struct TYPE_6__* psz_unix_path; int /*<<< orphan*/  pi_socket_listen; int /*<<< orphan*/  thread; int /*<<< orphan*/  player_listener; int /*<<< orphan*/  player_aout_listener; int /*<<< orphan*/  playlist; } ;
typedef  TYPE_2__ intf_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12( vlc_object_t *p_this )
{
    intf_thread_t *p_intf = (intf_thread_t*)p_this;
    intf_sys_t *p_sys = p_intf->p_sys;

    vlc_player_t *player = FUNC11(p_sys->playlist);
    FUNC7(player);
    FUNC10(player, p_sys->player_aout_listener);
    FUNC8(player, p_sys->player_listener);
    FUNC9(player);

    FUNC4( p_sys->thread );
    FUNC5( p_sys->thread, NULL );

    FUNC2( p_sys->pi_socket_listen );
    if( p_sys->i_socket != -1 )
        FUNC1( p_sys->i_socket );
#if defined(AF_LOCAL) && !defined(_WIN32)
    if( p_sys->psz_unix_path != NULL )
    {
        unlink( p_sys->psz_unix_path );
        free( p_sys->psz_unix_path );
    }
#endif
    FUNC6( &p_sys->status_lock );
    FUNC0( p_sys );
}