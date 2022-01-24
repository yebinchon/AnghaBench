#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_7__ {int /*<<< orphan*/  p_creds; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8( vlc_object_t *p_access, access_sys_t *p_sys )
{
    FUNC4( p_access, "stopping stream" );
    FUNC3( p_access, p_sys );

    if( FUNC2( p_access, p_sys, "QUIT" ) < 0 )
    {
        FUNC5( p_access, "cannot quit" );
    }
    else
    {
        FUNC1( p_access, p_sys, NULL, NULL );
    }

    FUNC0( p_sys );

    /* free memory */
    FUNC6( &p_sys->url );
    FUNC7( p_sys->p_creds );
}