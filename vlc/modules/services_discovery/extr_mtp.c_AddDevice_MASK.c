#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {TYPE_3__* p_sys; } ;
typedef  TYPE_2__ services_discovery_t ;
struct TYPE_19__ {char* psz_name; scalar_t__ i_count; int /*<<< orphan*/  i_tracks_num; int /*<<< orphan*/ * pp_items; int /*<<< orphan*/  i_product_id; int /*<<< orphan*/  i_dev; int /*<<< orphan*/  i_bus; } ;
typedef  TYPE_3__ services_discovery_sys_t ;
typedef  int /*<<< orphan*/  input_item_t ;
struct TYPE_17__ {int /*<<< orphan*/  product_id; } ;
struct TYPE_21__ {TYPE_1__ device_entry; int /*<<< orphan*/  devnum; int /*<<< orphan*/  bus_location; } ;
struct TYPE_20__ {struct TYPE_20__* next; int /*<<< orphan*/  title; int /*<<< orphan*/  artist; } ;
typedef  TYPE_4__ LIBMTP_track_t ;
typedef  TYPE_5__ LIBMTP_raw_device_t ;
typedef  int /*<<< orphan*/  LIBMTP_mtpdevice_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  CountTracks ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14( services_discovery_t *p_sd,
                      LIBMTP_raw_device_t *p_raw_device )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;
    char *psz_name = NULL;
    LIBMTP_mtpdevice_t *p_device;
    LIBMTP_track_t *p_track, *p_tmp;

    if( ( p_device = FUNC4( p_raw_device ) ) != NULL )
    {
        if( !( psz_name = FUNC1( p_device ) ) )
            if( !( psz_name = FUNC2( p_device ) ) )
                if( !( psz_name = FUNC13( FUNC7( "MTP Device" ) ) ) )
                    return VLC_ENOMEM;
        FUNC11( p_sd, "Found device: %s", psz_name );
        p_sys->i_bus = p_raw_device->bus_location;
        p_sys->i_dev = p_raw_device->devnum;
        p_sys->i_product_id = p_raw_device->device_entry.product_id;
        if( ( p_track = FUNC3( p_device,
                            CountTracks, p_sd ) ) == NULL )
        {
            FUNC12( p_sd, "No tracks on the device" );
            p_sys->pp_items = NULL;
        }
        else
        {
            if( !( p_sys->pp_items = FUNC8( p_sys->i_tracks_num,
                                                   sizeof( input_item_t * ) ) ) )
            {
                FUNC9( psz_name );
                return VLC_ENOMEM;
            }
            p_sys->i_count = 0;
            while( p_track != NULL )
            {
                FUNC10( p_sd, "Track found: %s - %s", p_track->artist,
                         p_track->title );
                FUNC0( p_sd, p_track );
                p_tmp = p_track;
                p_track = p_track->next;
                FUNC6( p_tmp );
            }
        }
        p_sys->psz_name = psz_name;
        FUNC5( p_device );
        return VLC_SUCCESS;
    }
    else
    {
        FUNC11( p_sd, "The device seems to be mounted, unmount it first" );
        return VLC_EGENERIC;
    }
}