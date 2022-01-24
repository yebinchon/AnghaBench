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
typedef  int /*<<< orphan*/  vlc_keystore ;
typedef  int dbus_bool_t ;
struct TYPE_5__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  TYPE_1__ DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_BOOLEAN ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/ * ppsz_sAddr ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10( vlc_keystore* p_keystore, int i_sid, bool* b_is_enabled )
{
    FUNC0( p_keystore );
    DBusMessage* msg = NULL;
    DBusMessage* repmsg = NULL;
    DBusMessageIter args;
    DBusError error;
    dbus_bool_t b_reply;
    int i_ret = VLC_EGENERIC;

    /* init */
    msg = FUNC6( "org.freedesktop.DBus",
                                        "/",
                                        "org.freedesktop.DBus",
                                        "NameHasOwner" );
    if ( !msg )
    {
        FUNC8( p_keystore, "vlc_dbus_new_method : Failed to create message" );
        goto end;
    }

    /* argument init */
    FUNC5( msg, &args );
    if ( !FUNC4( &args, DBUS_TYPE_STRING, &ppsz_sAddr[i_sid] ) )
        goto end;

    /* sending message */
    repmsg = FUNC9( p_keystore, msg );
    if ( !repmsg )
    {
        FUNC8( p_keystore, "kwallet_is_enabled : vlc_dbus_send_message failed");
        goto end;
    }

    /* handling reply */
    FUNC2( &error );
    if ( !FUNC3( repmsg, &error, DBUS_TYPE_BOOLEAN,
                                 &b_reply, DBUS_TYPE_INVALID ) )
    {
        FUNC8( p_keystore, "kwallet_is_enabled : "
                 "dbus_message_get_args failed\n%s", error.message );
        FUNC1( &error );
        goto end;
    }

    *b_is_enabled = b_reply;

    i_ret = VLC_SUCCESS;

end:

    if ( msg )
        FUNC7( msg );
    if ( repmsg )
        FUNC7( repmsg );

    return i_ret;
}