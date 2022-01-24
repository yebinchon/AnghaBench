#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_14__ {int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_12__ {scalar_t__ psz_service; } ;
typedef  TYPE_3__ SERVICE_TABLE_ENTRY ;
typedef  int /*<<< orphan*/ * LPSERVICE_MAIN_FUNCTION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ServiceDispatch ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLCSERVICENAME ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*) ; 
 TYPE_2__* p_global_intf ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void *FUNC11( void *data )
{
    intf_thread_t *p_intf = data;
    SERVICE_TABLE_ENTRY dispatchTable[] =
    {
        { (WCHAR*) FUNC3(VLCSERVICENAME), (LPSERVICE_MAIN_FUNCTION) &ServiceDispatch },
        { NULL, NULL }
    };

    p_global_intf = p_intf;
    p_intf->p_sys->psz_service = FUNC9( p_intf, "ntservice-name" );
    p_intf->p_sys->psz_service = p_intf->p_sys->psz_service ?
        p_intf->p_sys->psz_service : FUNC7(VLCSERVICENAME);

    if( FUNC8( p_intf, "ntservice-install" ) )
    {
        FUNC0( p_intf );
        return NULL;
    }

    if( FUNC8( p_intf, "ntservice-uninstall" ) )
    {
        FUNC1( p_intf );
        return NULL;
    }

    if( FUNC2( dispatchTable ) == 0 )
    {
        FUNC6( p_intf, "StartServiceCtrlDispatcher failed" ); /* str review */
    }

    FUNC4( p_intf->p_sys->psz_service );

    /* Make sure we exit (In case other interfaces have been spawned) */
    FUNC5( FUNC10(p_intf) );
    return NULL;
}