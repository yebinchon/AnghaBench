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
typedef  int /*<<< orphan*/ * raw1394handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct raw1394_portinfo*,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static raw1394handle_t FUNC6( stream_t *p_access, int port )
{
    int n_ports;
    struct raw1394_portinfo pinf[ 16 ];
    raw1394handle_t handle;

    /* get a raw1394 handle */
    handle = FUNC3();
    if( !handle )
    {
        FUNC0( p_access, "raw1394 - failed to get handle: %s",
                 FUNC5(errno) );
        return NULL;
    }

    if( ( n_ports = FUNC2( handle, pinf, 16 ) ) < 0 )
    {
        FUNC0( p_access, "raw1394 - failed to get port info: %s",
                 FUNC5(errno) );
        FUNC1( handle );
        return NULL;
    }

    /* tell raw1394 which host adapter to use */
    if( FUNC4( handle, port ) < 0 )
    {
        FUNC0( p_access, "raw1394 - failed to set set port: %s",
                 FUNC5(errno) );
        return NULL;
    }

    return handle;
}