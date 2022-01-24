#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int /*<<< orphan*/  dvr ;
struct TYPE_3__ {int /*<<< orphan*/  i_handle; } ;
typedef  TYPE_1__ dvb_sys_t ;

/* Variables and functions */
 char* DVR ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int,char*,unsigned int,unsigned int) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    unsigned int i_adapter, i_device;
    char dvr[128];

    i_adapter = FUNC5( p_access, "dvb-adapter" );
    i_device = FUNC5( p_access, "dvb-device" );

    if( FUNC4( dvr, sizeof(dvr), DVR, i_adapter, i_device )
            >= (int)sizeof(dvr) )
    {
        FUNC2( p_access, "snprintf() truncated string for DVR" );
        dvr[sizeof(dvr) - 1] = '\0';
    }

    FUNC1( p_access, "Opening device %s", dvr );
    if( (p_sys->i_handle = FUNC6(dvr, O_RDONLY)) < 0 )
    {
        FUNC2( p_access, "DVROpen: opening device failed: %s",
                 FUNC7(errno) );
        return VLC_EGENERIC;
    }

    if( FUNC0( p_sys->i_handle, F_SETFL, O_NONBLOCK ) == -1 )
    {
        FUNC3( p_access, "DVROpen: couldn't set non-blocking mode: %s",
                  FUNC7(errno) );
    }

    return VLC_SUCCESS;
}