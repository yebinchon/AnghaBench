#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_5__ {int i_vcdimage_handle; int i_device_handle; scalar_t__ hcd; scalar_t__ h_device_handle; struct TYPE_5__* psz_dev; } ;
typedef  TYPE_1__ vcddev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void FUNC5( vlc_object_t * p_this, vcddev_t *p_vcddev )
{
    FUNC3( p_vcddev->psz_dev );

    if( p_vcddev->i_vcdimage_handle != -1 )
    {
        /*
         *  vcd image mode
         */

        FUNC1( p_this, p_vcddev );
        return;
    }

    /*
     *  vcd device mode
     */

#ifdef _WIN32
    if( p_vcddev->h_device_handle )
        CloseHandle( p_vcddev->h_device_handle );
#elif defined( __OS2__ )
    if( p_vcddev->hcd )
        DosClose( p_vcddev->hcd );
#else
    if( p_vcddev->i_device_handle != -1 )
        FUNC4( p_vcddev->i_device_handle );
#endif
    FUNC3( p_vcddev );
}