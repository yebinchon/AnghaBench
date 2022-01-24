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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int i_fd; int i_announces; int /*<<< orphan*/ * pp_announces; int /*<<< orphan*/ * pi_fd; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( vlc_object_t *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t* )p_this;
    services_discovery_sys_t    *p_sys  = p_sd->p_sys;
    int i;

    FUNC4 (p_sys->thread);
    FUNC5 (p_sys->thread, NULL);

    for( i = p_sys->i_fd-1 ; i >= 0 ; i-- )
    {
        FUNC3( p_sys->pi_fd[i] );
    }
    FUNC0( p_sys->pi_fd );

    for( i = p_sys->i_announces  - 1;  i>= 0; i-- )
    {
        FUNC1( p_sd, p_sys->pp_announces[i] );
    }
    FUNC0( p_sys->pp_announces );

    FUNC2( p_sys );
}