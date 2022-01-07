
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int i_calibrate; scalar_t__ i_sum; scalar_t__ i; int p_oldx; int sensor; int unimotion_hw; } ;
typedef TYPE_1__ motion_sensors_t ;
typedef int FILE ;


 int AMS_SENSOR ;
 int APPLESMC_SENSOR ;
 int HDAPS_SENSOR ;
 int R_OK ;
 int UNIMOTION_SENSOR ;
 scalar_t__ access (char*,int ) ;
 int detect_sms () ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (TYPE_1__*) ;
 int fscanf (int *,char*,int*,int*) ;
 TYPE_1__* malloc (int) ;
 int memset (int ,int ,int) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*) ;
 scalar_t__ unlikely (int ) ;

motion_sensors_t *motion_create( vlc_object_t *obj )
{
    FILE *f;
    int i_x = 0, i_y = 0;

    motion_sensors_t *motion = malloc( sizeof( motion_sensors_t ) );
    if( unlikely( motion == ((void*)0) ) )
    {
        return ((void*)0);
    }

    if( access( "/sys/devices/platform/hdaps/position", R_OK ) == 0
        && ( f = fopen( "/sys/devices/platform/hdaps/calibrate", "re" ) ) )
    {

        motion->i_calibrate = fscanf( f, "(%d,%d)", &i_x, &i_y ) == 2 ? i_x: 0;
        fclose( f );
        motion->sensor = HDAPS_SENSOR;
        msg_Dbg( obj, "HDAPS motion detection correctly loaded" );
    }
    else if( access( "/sys/devices/ams/x", R_OK ) == 0 )
    {

        motion->sensor = AMS_SENSOR;
        msg_Dbg( obj, "AMS motion detection correctly loaded" );
    }
    else if( access( "/sys/devices/platform/applesmc.768/position", R_OK ) == 0
             && ( f = fopen( "/sys/devices/platform/applesmc.768/calibrate", "re" ) ) )
    {


        motion->i_calibrate = fscanf( f, "(%d,%d)", &i_x, &i_y ) == 2 ? i_x: 0;
        fclose( f );
        motion->sensor = APPLESMC_SENSOR;
        msg_Dbg( obj, "Apple SMC motion detection correctly loaded" );
    }







    else
    {

        msg_Err( obj, "No motion sensor available" );
        free( motion );
        return ((void*)0);
    }

    memset( motion->p_oldx, 0, sizeof( motion->p_oldx ) );
    motion->i = 0;
    motion->i_sum = 0;
    return motion;
}
