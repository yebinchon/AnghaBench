#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  psz_wallet; } ;
typedef  TYPE_1__ vlc_keystore_sys ;
struct TYPE_12__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ vlc_keystore ;
struct TYPE_13__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  TYPE_3__ DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8( vlc_keystore* p_keystore )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    DBusMessage* msg = NULL;
    DBusMessage* repmsg = NULL;
    DBusError error;
    char* psz_reply;
    int i_ret = VLC_EGENERIC;

    /* init */
    msg = FUNC6( p_keystore, "networkWallet" );
    if ( !msg )
    {
        FUNC4( p_keystore, "kwallet_network_wallet : vlc_dbus_new_method failed" );
        return VLC_EGENERIC;
    }

    /* sending message */
    repmsg = FUNC7( p_keystore, msg );
    if ( !repmsg )
    {
        FUNC4( p_keystore, "kwallet_network_wallet : vlc_dbus_send_message failed" );
        goto end;
    }

    /* handling reply */
    FUNC1( &error );
    if ( !FUNC2( repmsg, &error, DBUS_TYPE_STRING,
                                 &psz_reply, DBUS_TYPE_INVALID ) )
    {
        FUNC4( p_keystore, "kwallet_network_wallet : "
                 "dbus_message_get_args failed\n%s", error.message );
        FUNC0( &error );
        goto end;
    }

    p_sys->psz_wallet = FUNC5( psz_reply );
    if ( !p_sys->psz_wallet )
    {
        i_ret = VLC_ENOMEM;
        goto end;
    }

    i_ret = VLC_SUCCESS;

end:

    if ( msg )
        FUNC3( msg );
    if ( repmsg )
        FUNC3( repmsg );

    return i_ret;
}