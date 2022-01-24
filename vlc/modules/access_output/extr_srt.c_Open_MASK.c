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
struct TYPE_7__ {int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_write; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_access_out_t ;
struct TYPE_8__ {int i_poll_id; int sock; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ sout_access_out_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_INTEGER ; 
 int /*<<< orphan*/  VLC_VAR_STRING ; 
 int /*<<< orphan*/  Write ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static int FUNC12( vlc_object_t *p_this )
{
    sout_access_out_t       *p_access = (sout_access_out_t*)p_this;
    sout_access_out_sys_t   *p_sys = NULL;

    if (FUNC8 ( p_access, "dst-port", VLC_VAR_INTEGER )
     || FUNC8 ( p_access, "src-port", VLC_VAR_INTEGER )
     || FUNC8 ( p_access, "dst-addr", VLC_VAR_STRING )
     || FUNC8 ( p_access, "src-addr", VLC_VAR_STRING ) )
    {
         FUNC0( p_access, "Valid network information is required." );
        return VLC_ENOMEM;
    }

    p_sys = FUNC11( p_this, 1, sizeof( *p_sys ) );
    if( FUNC7( p_sys == NULL ) )
        return VLC_ENOMEM;

    FUNC6();

    FUNC10( &p_sys->lock );

    p_access->p_sys = p_sys;

    p_sys->i_poll_id = FUNC2();
    if ( p_sys->i_poll_id == -1 )
    {
        FUNC0( p_access, "Failed to create poll id for SRT socket (reason: %s)",
                 FUNC4() );

        goto failed;
    }

    if ( !FUNC5( p_access ) )
    {
        FUNC0( p_access, "Failed to schedule connect");

        goto failed;
    }

    p_access->pf_write = Write;
    p_access->pf_control = Control;

    return VLC_SUCCESS;

failed:
    FUNC9( &p_sys->lock );

    if ( p_sys->sock != -1 ) FUNC1( p_sys->sock );
    if ( p_sys->i_poll_id != -1 ) FUNC3( p_sys->i_poll_id );

    return VLC_EGENERIC;
}