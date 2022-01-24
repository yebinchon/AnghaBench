#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_10__ {int /*<<< orphan*/  i_position; int /*<<< orphan*/  i_start; } ;
typedef  TYPE_2__ access_sys_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,char**) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC6( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;
    char *psz_location = NULL;

    FUNC4( p_access, "Restart the stream" );
    p_sys->i_start = p_sys->i_position;

    /* */
    FUNC4( p_access, "stopping the stream" );
    FUNC2( p_access );

    /* */
    FUNC4( p_access, "describe the stream" );
    if( FUNC0( p_access, &psz_location ) )
    {
        FUNC5( p_access, "describe failed" );
        return VLC_EGENERIC;
    }
    FUNC3( psz_location );

    /* */
    if( FUNC1( p_access, 0 ) )
    {
        FUNC5( p_access, "Start failed" );
        return VLC_EGENERIC;
    }
    return VLC_SUCCESS;
}