
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int services_discovery_t ;
typedef int LIBMTP_raw_device_t ;


 scalar_t__ AddDevice (int *,int *) ;
 int CloseDevice (int *) ;
 int LIBMTP_Detect_Raw_Devices (int **,int*) ;
 scalar_t__ VLC_SUCCESS ;
 int VLC_TICK_FROM_MS (int) ;
 int VLC_TICK_FROM_SEC (int) ;
 int free (int *) ;
 int msg_Dbg (int *,char*) ;
 int msg_Info (int *,char*) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static void *Run( void *data )
{
    LIBMTP_raw_device_t *p_rawdevices;
    int i_numrawdevices;
    int i_ret;
    int i_status = 0;
    services_discovery_t *p_sd = data;

    for(;;)
    {
        int canc = vlc_savecancel();
        i_ret = LIBMTP_Detect_Raw_Devices( &p_rawdevices, &i_numrawdevices );
        if ( i_ret == 0 && i_numrawdevices > 0 && p_rawdevices != ((void*)0) &&
             i_status == 0 )
        {

            msg_Dbg( p_sd, "New device found" );
            if( AddDevice( p_sd, &p_rawdevices[0] ) == VLC_SUCCESS )
                i_status = 1;
            else
                i_status = 2;
        }
        else
        {
            if ( ( i_ret != 0 || i_numrawdevices == 0 || p_rawdevices == ((void*)0) )
                 && i_status == 1)
            {

                msg_Info( p_sd, "Device disconnected" );
                CloseDevice( p_sd );
                i_status = 0;
            }
        }
        free( p_rawdevices );
        vlc_restorecancel(canc);
        if( i_status == 2 )
        {
            vlc_tick_sleep( VLC_TICK_FROM_SEC(5) );
            i_status = 0;
        }
        else
            vlc_tick_sleep( VLC_TICK_FROM_MS(500) );
    }
    return ((void*)0);
}
