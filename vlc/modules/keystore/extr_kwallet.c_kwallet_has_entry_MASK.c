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
struct TYPE_11__ {char* i_handle; char* psz_app_id; } ;
typedef  TYPE_1__ vlc_keystore_sys ;
struct TYPE_12__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ vlc_keystore ;
typedef  int dbus_bool_t ;
struct TYPE_13__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  TYPE_3__ DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_BOOLEAN ; 
 int /*<<< orphan*/  DBUS_TYPE_INT32 ; 
 int /*<<< orphan*/  DBUS_TYPE_INVALID ; 
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 char* psz_folder ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9( vlc_keystore* p_keystore, char* psz_entry_name, bool *b_has_entry )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    DBusMessage* msg = NULL;
    DBusMessage* repmsg = NULL;
    DBusError error;
    DBusMessageIter args;
    dbus_bool_t b_reply;
    int i_ret = VLC_EGENERIC;

    /* init */
    if ( !( msg = FUNC7(p_keystore, "hasEntry" ) ) )
    {
        FUNC6( p_keystore, "kwallet_has_entry : vlc_dbus_new_method failed" );
        return VLC_EGENERIC;
    }

    /* argument init */
    FUNC4( msg, &args );
    if ( !FUNC3( &args, DBUS_TYPE_INT32, &p_sys->i_handle ) ||
         !FUNC3( &args, DBUS_TYPE_STRING, &psz_folder ) ||
         !FUNC3( &args, DBUS_TYPE_STRING, &psz_entry_name ) ||
         !FUNC3( &args, DBUS_TYPE_STRING, &p_sys->psz_app_id ) )
        goto end;

    /* sending message */

    if ( !( repmsg = FUNC8( p_keystore, msg ) ) )
    {
        FUNC6( p_keystore, "kwallet_has_entry : vlc_dbus_send_message failed" );
        goto end;
    }

    /* handling reply */
    FUNC1( &error );
    if ( !FUNC2( repmsg, &error, DBUS_TYPE_BOOLEAN,
                                 &b_reply, DBUS_TYPE_INVALID ) )
    {
        FUNC6( p_keystore, "kwallet_has_entry :"
                 " dbus_message_get_args failed\n%s", error.message );
        FUNC0( &error );
        goto end;
    }
    *b_has_entry = b_reply;

    i_ret = VLC_SUCCESS;

end:

    if ( msg )
        FUNC5( msg );
    if ( repmsg )
        FUNC5( repmsg );

    return i_ret;
}