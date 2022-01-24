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
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ intf_thread_t ;
struct TYPE_7__ {int /*<<< orphan*/  psz_service; } ;
typedef  TYPE_2__ intf_sys_t ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DELETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_ALL_ACCESS ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,...) ; 

__attribute__((used)) static int FUNC6( intf_thread_t *p_intf )
{
    intf_sys_t *p_sys  = p_intf->p_sys;

    SC_HANDLE handle = FUNC2( NULL, NULL, SC_MANAGER_ALL_ACCESS );
    if( handle == NULL )
    {
        FUNC5( p_intf,
                 "could not connect to Services Control Manager database" );
        return VLC_EGENERIC;
    }

    /* First, open a handle to the service */
    SC_HANDLE service = FUNC3( handle, p_sys->psz_service, DELETE );
    if( service == NULL )
    {
        FUNC5( p_intf, "could not open service" );
        FUNC0( handle );
        return VLC_EGENERIC;
    }

    /* Remove the service */
    if( !FUNC1( service ) )
    {
        FUNC5( p_intf, "could not delete service \"%s\"",
                 p_sys->psz_service );
    }
    else
    {
        FUNC4( p_intf, "service deleted successfuly" );
    }

    FUNC0( service );
    FUNC0( handle );

    return VLC_SUCCESS;
}