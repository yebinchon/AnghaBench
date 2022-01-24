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
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/  pf_control; } ;
typedef  TYPE_1__ extensions_manager_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_ADDRESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlclua_extension_dialog_callback ; 

int FUNC7( vlc_object_t *p_this )
{
    if( FUNC1( p_this ) )
        return VLC_EGENERIC;

    FUNC2( p_this, "Opening Lua Extension module" );

    extensions_manager_t *p_mgr = ( extensions_manager_t* ) p_this;

    p_mgr->pf_control = Control;

    p_mgr->p_sys = NULL;
    FUNC6( &p_mgr->lock );

    /* Scan available Lua Extensions */
    if( FUNC0( p_mgr ) != VLC_SUCCESS )
    {
        FUNC3( p_mgr, "Can't load extensions modules" );
        return VLC_EGENERIC;
    }

    // Create the dialog-event variable
    FUNC5( p_this, "dialog-event", VLC_VAR_ADDRESS );
    FUNC4( p_this, "dialog-event",
                     vlclua_extension_dialog_callback, NULL );

    return VLC_SUCCESS;
}