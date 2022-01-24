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
typedef  int /*<<< orphan*/  services_discovery_t ;
typedef  int /*<<< orphan*/  LIBMTP_raw_device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int*) ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC11( void *data )
{
    LIBMTP_raw_device_t *p_rawdevices;
    int i_numrawdevices;
    int i_ret;
    int i_status = 0;
    services_discovery_t *p_sd = data;

    for(;;)
    {
        int canc = FUNC9();
        i_ret = FUNC2( &p_rawdevices, &i_numrawdevices );
        if ( i_ret == 0 && i_numrawdevices > 0 && p_rawdevices != NULL &&
             i_status == 0 )
        {
            /* Found a new device, add it */
            FUNC6( p_sd, "New device found" );
            if( FUNC0( p_sd, &p_rawdevices[0] ) == VLC_SUCCESS )
                i_status = 1;
            else
                i_status = 2;
        }
        else
        {
            if ( ( i_ret != 0 || i_numrawdevices == 0 || p_rawdevices == NULL )
                 && i_status == 1)
            {
                /* The device is not connected anymore, delete it */
                FUNC7( p_sd, "Device disconnected" );
                FUNC1( p_sd );
                i_status = 0;
            }
        }
        FUNC5( p_rawdevices );
        FUNC8(canc);
        if( i_status == 2 )
        {
            FUNC10( FUNC4(5) );
            i_status = 0;
        }
        else
            FUNC10( FUNC3(500) );
    }
    return NULL;
}