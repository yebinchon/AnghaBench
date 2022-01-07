
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sensor; int unimotion_hw; int i_calibrate; } ;
typedef TYPE_1__ motion_sensors_t ;
typedef int FILE ;






 int asin (double) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,int*,...) ;
 int read_sms_raw (int ,int*,int*,int*) ;
 double sqrt (int) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static int GetOrientation( motion_sensors_t *motion )
{
    FILE *f;
    int i_x = 0, i_y = 0, i_z = 0;
    int i_ret;

    switch( motion->sensor )
    {
    case 129:
        f = fopen( "/sys/devices/platform/hdaps/position", "re" );
        if( !f )
        {
            return 0;
        }

        i_ret = fscanf( f, "(%d,%d)", &i_x, &i_y );
        fclose( f );

        if( i_ret < 2 )
            return 0;
        else
            return ( i_x - motion->i_calibrate ) * 10;

    case 131:
        f = fopen( "/sys/devices/ams/x", "re" );
        if( !f )
        {
            return 0;
        }

        i_ret = fscanf( f, "%d", &i_x);
        fclose( f );

        if( i_ret < 1 )
            return 0;
        else
            return - i_x * 30;

    case 130:
        f = fopen( "/sys/devices/platform/applesmc.768/position", "re" );
        if( !f )
        {
            return 0;
        }

        i_ret = fscanf( f, "(%d,%d,%d)", &i_x, &i_y, &i_z );
        fclose( f );

        if( i_ret < 3 )
            return 0;
        else
            return ( i_x - motion->i_calibrate ) * 10;
    default:
        vlc_assert_unreachable();
    }
}
