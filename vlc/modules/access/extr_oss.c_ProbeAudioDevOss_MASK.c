#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SNDCTL_DSP_GETCAPS ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5( demux_t *p_demux, const char *psz_device )
{
    int i_caps;
    int i_fd = FUNC3( psz_device, O_RDONLY | O_NONBLOCK );

    if( i_fd < 0 )
    {
        FUNC1( p_demux, "cannot open device %s for OSS audio (%s)",
                 psz_device, FUNC4(errno) );
        goto open_failed;
    }

    /* this will fail if the device is video */
    if( FUNC0( i_fd, SNDCTL_DSP_GETCAPS, &i_caps ) < 0 )
    {
        FUNC1( p_demux, "cannot get audio caps (%s)",
                 FUNC4(errno) );
        goto open_failed;
    }

    if( i_fd >= 0 )
        FUNC2( i_fd );

    return true;

open_failed:
    if( i_fd >= 0 )
        FUNC2( i_fd );
    return false;
}