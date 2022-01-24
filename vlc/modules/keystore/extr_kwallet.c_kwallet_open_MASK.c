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
struct TYPE_13__ {unsigned long long psz_wallet; unsigned long long psz_app_id; unsigned int i_handle; } ;
typedef  TYPE_1__ vlc_keystore_sys ;
struct TYPE_14__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ vlc_keystore ;
struct TYPE_15__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  TYPE_3__ DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_INT32 ; 
 int /*<<< orphan*/  DBUS_TYPE_INT64 ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  psz_folder ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11( vlc_keystore* p_keystore )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    DBusMessage* msg = NULL;
    DBusMessage* repmsg = NULL;
    DBusMessageIter args;
    DBusError error;
    unsigned long long ull_win_id = 0;
    unsigned int ui_reply = 1;
    bool b_has_folder;
    int i_ret = VLC_EGENERIC;

    /* init */
    msg = FUNC9( p_keystore, "open" );
    if ( !msg )
    {
        FUNC8( p_keystore, "kwallet_open : vlc_dbus_new_method failed");
        return VLC_EGENERIC;
    }

    /* Init args */
    FUNC4(msg, &args);
    if ( !FUNC3( &args, DBUS_TYPE_STRING, &p_sys->psz_wallet ) ||
         !FUNC3( &args, DBUS_TYPE_INT64, &ull_win_id ) ||
         !FUNC3( &args, DBUS_TYPE_STRING, &p_sys->psz_app_id ) )
        goto end;

    /* sending message */
    repmsg = FUNC10( p_keystore, msg );
    if ( !repmsg )
    {
        FUNC8( p_keystore, "kwallet_open : vlc_dbus_send_message failed" );
        goto end;
    }

    /* reply arguments */
    FUNC1( &error );
    if ( !FUNC2( repmsg, &error, DBUS_TYPE_INT32,
                                 &ui_reply, DBUS_TYPE_INVALID ) )
    {
        FUNC8( p_keystore, "kwallet_open :"
                 " dbus_message_get_args failed\n%s", error.message );
        FUNC0( &error );
        goto end;
    }
    p_sys->i_handle = ui_reply;

    /* opening the vlc password folder == VLC_KEYSTORE_NAME */
    if ( FUNC7( p_keystore, psz_folder, &b_has_folder ) )
        goto end;
    if ( !b_has_folder )
    {
        if ( FUNC6( p_keystore, psz_folder ) )
        {
            FUNC8( p_keystore, "kwallet_open : could not create folder %s",
                     psz_folder );
            goto end;
        }
    }

    i_ret = VLC_SUCCESS;

end:

    if ( msg )
        FUNC5( msg );
    if ( repmsg )
        FUNC5( repmsg );

    return i_ret;
}