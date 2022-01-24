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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  rom1394_directory ;
typedef  int /*<<< orphan*/ * raw1394handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AVC1394_SUBUNIT_TYPE_VCR ; 
 scalar_t__ ROM1394_NODE_TYPE_AVC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9( stream_t *p_access, int* port, uint64_t guid )
{
    rom1394_directory rom_dir;
    raw1394handle_t handle = NULL;
    int device = -1;
    int i, j = 0;
    int m = FUNC1( p_access );

    if( *port >= 0 )
    {
        /* search on explicit port */
        j = *port;
        m = *port + 1;
    }

    for( ; j < m && device == -1; j++ )
    {
        handle = FUNC2( p_access, j );
        if( !handle )
            return -1;

        for( i = 0; i < FUNC5( handle ); ++i )
        {
            if( guid != 0 )
            {
                /* select explicitly by GUID */
                if( guid == FUNC7( handle, i ) )
                {
                    device = i;
                    *port = j;
                    break;
                }
            }
            else
            {
                /* select first AV/C Tape Reccorder Player node */
                if( FUNC6( handle, i, &rom_dir ) < 0 )
                {
                    FUNC4( p_access, "error reading config rom directory for node %d", i );
                    continue;
                }
                if( ( FUNC8( &rom_dir ) == ROM1394_NODE_TYPE_AVC ) &&
                        FUNC3( handle, i, AVC1394_SUBUNIT_TYPE_VCR ) )
                {
                    device = i;
                    *port = j;
                    break;
                }
            }
        }
        FUNC0( handle );
    }

    return device;
}