#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned int i_sid; int /*<<< orphan*/  connection; int /*<<< orphan*/ * psz_app_id; } ;
typedef  TYPE_1__ vlc_keystore_sys ;
struct TYPE_14__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ vlc_keystore ;
struct TYPE_15__ {int /*<<< orphan*/  message; } ;
typedef  TYPE_3__ DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_BUS_SESSION ; 
 char* DBUS_INSTANCE_PREFIX ; 
 int DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* KWALLET_APP_ID ; 
 unsigned int SERVICE_MAX ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*,unsigned int,int*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char*,char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*) ; 

__attribute__((used)) static int
FUNC14( vlc_keystore* p_keystore )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    int i_ret;
    DBusError error;

    FUNC6( &error );

    /* DBus Connection */
    p_sys->connection = FUNC1( DBUS_BUS_SESSION, &error );
    if ( FUNC7( &error ) )
    {
        FUNC10( p_keystore, "vlc_dbus_init : "
                 "Connection error to session bus (%s)", error.message );
        FUNC5( &error );
    }
    if ( !p_sys->connection )
    {
        FUNC10( p_keystore, "vlc_dbus_init : connection is NULL");
        return VLC_EGENERIC;
    }

    /* requesting name */
    for( unsigned i = 0; i <= 99 && p_sys->psz_app_id == NULL; ++i )
    {
        char psz_dbus_name[FUNC13( KWALLET_APP_ID ) + FUNC13( DBUS_INSTANCE_PREFIX ) + 5];

        FUNC11( psz_dbus_name, "%s.%s_%02u", KWALLET_APP_ID, DBUS_INSTANCE_PREFIX, i );
        i_ret = FUNC2( p_sys->connection, psz_dbus_name, 0,
                                       &error );
        if ( FUNC7( &error ) )
        {
            FUNC10( p_keystore, "vlc_dbus_init : dbus_bus_request_name :"
                     " error (%s)", error.message );
            FUNC5( &error );
        }
        if ( i_ret == DBUS_REQUEST_NAME_REPLY_PRIMARY_OWNER )
        {
            p_sys->psz_app_id = FUNC12( psz_dbus_name );
            if ( !p_sys->psz_app_id )
                goto error;
        }
    }
    if ( p_sys->psz_app_id == NULL )
    {
        FUNC10( p_keystore, "vlc_dbus_init : Too many kwallet instances" );
        goto error;
    }

    /* check to see if any kwallet service is enabled */
    unsigned int i = 0;
    for ( ; i < SERVICE_MAX ; ++i )
    {
        bool b_is_enabled = false;
        if ( FUNC8( p_keystore, i, &b_is_enabled ) )
        {
            FUNC10( p_keystore, "vlc_dbus_init : kwallet_is_enabled failed" );
            goto error;
        }
        if ( b_is_enabled == true )
            break;
    }
    if ( i == SERVICE_MAX )
    {
        FUNC10( p_keystore, "vlc_dbus_init : No kwallet service enabled" );
        goto error;
    }
    p_sys->i_sid = i;

    /* getting the name of the wallet assigned to network passwords */
    if ( FUNC9( p_keystore ) )
    {
        FUNC10(p_keystore, "vlc_dbus_init : kwallet_network_wallet has failed");
        goto error;
    }

    return VLC_SUCCESS;

error:
    FUNC0( p_sys->psz_app_id );
    FUNC3( p_sys->connection );
    FUNC4( p_sys->connection );
    return VLC_EGENERIC;
}