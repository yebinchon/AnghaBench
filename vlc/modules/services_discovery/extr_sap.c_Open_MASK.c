#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int /*<<< orphan*/  description; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ services_discovery_t ;
struct TYPE_8__ {int /*<<< orphan*/  thread; int /*<<< orphan*/ * pp_announces; scalar_t__ i_announces; void* b_parse; void* b_strict; scalar_t__ i_fd; int /*<<< orphan*/ * pi_fd; int /*<<< orphan*/  i_timeout; } ;
typedef  TYPE_2__ services_discovery_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Run ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7( vlc_object_t *p_this )
{
    services_discovery_t *p_sd = ( services_discovery_t* )p_this;
    services_discovery_sys_t *p_sys  = (services_discovery_sys_t *)
                                FUNC2( sizeof( services_discovery_sys_t ) );
    if( !p_sys )
        return VLC_ENOMEM;

    p_sys->i_timeout = FUNC6(FUNC4( p_sd, "sap-timeout" ));

    p_sd->p_sys  = p_sys;
    p_sd->description = FUNC0("Network streams (SAP)");

    p_sys->pi_fd = NULL;
    p_sys->i_fd = 0;

    p_sys->b_strict = FUNC3( p_sd, "sap-strict");
    p_sys->b_parse = FUNC3( p_sd, "sap-parse" );

    p_sys->i_announces = 0;
    p_sys->pp_announces = NULL;
    /* TODO: create sockets here, and fix racy sockets table */
    if (FUNC5 (&p_sys->thread, Run, p_sd, VLC_THREAD_PRIORITY_LOW))
    {
        FUNC1 (p_sys);
        return VLC_EGENERIC;
    }

    return VLC_SUCCESS;
}