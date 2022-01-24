#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock_sdp; scalar_t__* psz_sdp; } ;
typedef  TYPE_1__ sout_stream_sys_t ;
typedef  int /*<<< orphan*/  httpd_file_t ;
typedef  int /*<<< orphan*/  httpd_file_sys_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int FUNC3 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int  FUNC6( httpd_file_sys_t *p_args,
                          httpd_file_t *f, uint8_t *p_request,
                          uint8_t **pp_data, int *pi_data )
{
    FUNC0(f); FUNC0(p_request);
    sout_stream_sys_t *p_sys = (sout_stream_sys_t*)p_args;

    FUNC4( &p_sys->lock_sdp );
    if( p_sys->psz_sdp && *p_sys->psz_sdp )
    {
        *pi_data = FUNC3( p_sys->psz_sdp );
        *pp_data = FUNC1( *pi_data );
        FUNC2( *pp_data, p_sys->psz_sdp, *pi_data );
    }
    else
    {
        *pp_data = NULL;
        *pi_data = 0;
    }
    FUNC5( &p_sys->lock_sdp );

    return VLC_SUCCESS;
}