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
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_stream_t ;
struct TYPE_6__ {int /*<<< orphan*/ * psz_sdp; int /*<<< orphan*/  psz_sdp_file; } ;
typedef  TYPE_2__ sout_stream_sys_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( sout_stream_t *p_stream )
{
    sout_stream_sys_t *p_sys = p_stream->p_sys;
    FILE            *f;

    if( p_sys->psz_sdp == NULL )
        return VLC_EGENERIC; /* too early */

    if( ( f = FUNC3( p_sys->psz_sdp_file, "wt" ) ) == NULL )
    {
        FUNC2( p_stream, "cannot open file '%s' (%s)",
                 p_sys->psz_sdp_file, FUNC4(errno) );
        return VLC_EGENERIC;
    }

    FUNC1( p_sys->psz_sdp, f );
    FUNC0( f );

    return VLC_SUCCESS;
}