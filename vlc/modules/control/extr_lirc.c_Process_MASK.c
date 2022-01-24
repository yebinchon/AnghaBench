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
typedef  scalar_t__ vlc_action_id_t ;
struct TYPE_7__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
struct TYPE_6__ {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,char**) ; 
 scalar_t__ FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC8( intf_thread_t *p_intf )
{
    for( ;; )
    {
        char *code, *c;
        if( FUNC2( &code ) )
            return;

        if( code == NULL )
            return;

        while( (FUNC1( p_intf->p_sys->config, code, &c ) == 0)
                && (c != NULL) )
        {
            if( !FUNC4( "key-", c, 4 ) )
            {
                vlc_action_id_t i_key = FUNC6( c );
                if( i_key )
                    FUNC5( FUNC7(p_intf), "key-action", i_key );
                else
                    FUNC3( p_intf, "Unknown hotkey '%s'", c );
            }
            else
            {
                FUNC3( p_intf, "this doesn't appear to be a valid keycombo "
                                 "lirc sent us. Please look at the "
                                 "doc/lirc/example.lirc file in VLC" );
                break;
            }
        }
        FUNC0( code );
    }
}