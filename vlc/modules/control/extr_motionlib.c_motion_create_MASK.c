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
struct TYPE_5__ {int i_calibrate; scalar_t__ i_sum; scalar_t__ i; int /*<<< orphan*/  p_oldx; int /*<<< orphan*/  sensor; int /*<<< orphan*/  unimotion_hw; } ;
typedef  TYPE_1__ motion_sensors_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AMS_SENSOR ; 
 int /*<<< orphan*/  APPLESMC_SENSOR ; 
 int /*<<< orphan*/  HDAPS_SENSOR ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  UNIMOTION_SENSOR ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

motion_sensors_t *FUNC11( vlc_object_t *obj )
{
    FILE *f;
    int i_x = 0, i_y = 0;

    motion_sensors_t *motion = FUNC6( sizeof( motion_sensors_t ) );
    if( FUNC10( motion == NULL ) )
    {
        return NULL;
    }

    if( FUNC0( "/sys/devices/platform/hdaps/position", R_OK ) == 0
        && ( f = FUNC3( "/sys/devices/platform/hdaps/calibrate", "re" ) ) )
    {
        /* IBM HDAPS support */
        motion->i_calibrate = FUNC5( f, "(%d,%d)", &i_x, &i_y ) == 2 ? i_x: 0;
        FUNC2( f );
        motion->sensor = HDAPS_SENSOR;
        FUNC8( obj, "HDAPS motion detection correctly loaded" );
    }
    else if( FUNC0( "/sys/devices/ams/x", R_OK ) == 0 )
    {
        /* Apple Motion Sensor support */
        motion->sensor = AMS_SENSOR;
        FUNC8( obj, "AMS motion detection correctly loaded" );
    }
    else if( FUNC0( "/sys/devices/platform/applesmc.768/position", R_OK ) == 0
             && ( f = FUNC3( "/sys/devices/platform/applesmc.768/calibrate", "re" ) ) )
    {
        /* Apple SMC (newer macbooks) */
        /* Should be factorised with HDAPS */
        motion->i_calibrate = FUNC5( f, "(%d,%d)", &i_x, &i_y ) == 2 ? i_x: 0;
        FUNC2( f );
        motion->sensor = APPLESMC_SENSOR;
        FUNC8( obj, "Apple SMC motion detection correctly loaded" );
    }
#ifdef HAVE_MACOS_UNIMOTION
    else if( (motion->unimotion_hw = detect_sms()) )
    {
        motion->sensor = UNIMOTION_SENSOR;
        msg_Dbg( obj, "UniMotion motion detection correctly loaded" );
    }
#endif
    else
    {
        /* No motion sensor support */
        FUNC9( obj, "No motion sensor available" );
        FUNC4( motion );
        return NULL;
    }

    FUNC7( motion->p_oldx, 0, sizeof( motion->p_oldx ) );
    motion->i = 0;
    motion->i_sum = 0;
    return motion;
}