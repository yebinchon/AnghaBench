
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ services_discovery_t ;
struct TYPE_19__ {char* psz_name; scalar_t__ i_count; int i_tracks_num; int * pp_items; int i_product_id; int i_dev; int i_bus; } ;
typedef TYPE_3__ services_discovery_sys_t ;
typedef int input_item_t ;
struct TYPE_17__ {int product_id; } ;
struct TYPE_21__ {TYPE_1__ device_entry; int devnum; int bus_location; } ;
struct TYPE_20__ {struct TYPE_20__* next; int title; int artist; } ;
typedef TYPE_4__ LIBMTP_track_t ;
typedef TYPE_5__ LIBMTP_raw_device_t ;
typedef int LIBMTP_mtpdevice_t ;


 int AddTrack (TYPE_2__*,TYPE_4__*) ;
 int CountTracks ;
 char* LIBMTP_Get_Friendlyname (int *) ;
 char* LIBMTP_Get_Modelname (int *) ;
 TYPE_4__* LIBMTP_Get_Tracklisting_With_Callback (int *,int ,TYPE_2__*) ;
 int * LIBMTP_Open_Raw_Device (TYPE_5__*) ;
 int LIBMTP_Release_Device (int *) ;
 int LIBMTP_destroy_track_t (TYPE_4__*) ;
 int N_ (char*) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * calloc (int ,int) ;
 int free (char*) ;
 int msg_Dbg (TYPE_2__*,char*,int ,int ) ;
 int msg_Info (TYPE_2__*,char*,...) ;
 int msg_Warn (TYPE_2__*,char*) ;
 char* strdup (int ) ;

__attribute__((used)) static int AddDevice( services_discovery_t *p_sd,
                      LIBMTP_raw_device_t *p_raw_device )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    char *psz_name = ((void*)0);
    LIBMTP_mtpdevice_t *p_device;
    LIBMTP_track_t *p_track, *p_tmp;

    if( ( p_device = LIBMTP_Open_Raw_Device( p_raw_device ) ) != ((void*)0) )
    {
        if( !( psz_name = LIBMTP_Get_Friendlyname( p_device ) ) )
            if( !( psz_name = LIBMTP_Get_Modelname( p_device ) ) )
                if( !( psz_name = strdup( N_( "MTP Device" ) ) ) )
                    return VLC_ENOMEM;
        msg_Info( p_sd, "Found device: %s", psz_name );
        p_sys->i_bus = p_raw_device->bus_location;
        p_sys->i_dev = p_raw_device->devnum;
        p_sys->i_product_id = p_raw_device->device_entry.product_id;
        if( ( p_track = LIBMTP_Get_Tracklisting_With_Callback( p_device,
                            CountTracks, p_sd ) ) == ((void*)0) )
        {
            msg_Warn( p_sd, "No tracks on the device" );
            p_sys->pp_items = ((void*)0);
        }
        else
        {
            if( !( p_sys->pp_items = calloc( p_sys->i_tracks_num,
                                                   sizeof( input_item_t * ) ) ) )
            {
                free( psz_name );
                return VLC_ENOMEM;
            }
            p_sys->i_count = 0;
            while( p_track != ((void*)0) )
            {
                msg_Dbg( p_sd, "Track found: %s - %s", p_track->artist,
                         p_track->title );
                AddTrack( p_sd, p_track );
                p_tmp = p_track;
                p_track = p_track->next;
                LIBMTP_destroy_track_t( p_tmp );
            }
        }
        p_sys->psz_name = psz_name;
        LIBMTP_Release_Device( p_device );
        return VLC_SUCCESS;
    }
    else
    {
        msg_Info( p_sd, "The device seems to be mounted, unmount it first" );
        return VLC_EGENERIC;
    }
}
