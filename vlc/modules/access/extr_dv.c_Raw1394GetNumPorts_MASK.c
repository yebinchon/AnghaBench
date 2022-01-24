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
struct raw1394_portinfo {int dummy; } ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  raw1394handle_t ;

/* Variables and functions */
 int VLC_EGENERIC ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct raw1394_portinfo*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5( stream_t *p_access )
{
    int n_ports;
    struct raw1394_portinfo pinf[ 16 ];
    raw1394handle_t handle;

    /* get a raw1394 handle */
    if( !( handle = FUNC3() ) )
    {
        FUNC0( p_access, "raw1394 - failed to get handle: %s",
                 FUNC4(errno) );
        return VLC_EGENERIC;
    }

    if( ( n_ports = FUNC2( handle, pinf, 16 ) ) < 0 )
    {
        FUNC0( p_access, "raw1394 - failed to get port info: %s",
                 FUNC4(errno) );
        FUNC1( handle );
        return VLC_EGENERIC;
    }
    FUNC1( handle );

    return n_ports;
}