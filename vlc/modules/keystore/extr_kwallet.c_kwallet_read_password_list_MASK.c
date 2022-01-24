#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* i_handle; char* psz_app_id; } ;
typedef  TYPE_1__ vlc_keystore_sys ;
typedef  int /*<<< orphan*/  vlc_keystore_entry ;
struct TYPE_8__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ vlc_keystore ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ DBUS_TYPE_ARRAY ; 
 scalar_t__ DBUS_TYPE_DICT_ENTRY ; 
 scalar_t__ DBUS_TYPE_INT32 ; 
 scalar_t__ DBUS_TYPE_STRING ; 
 scalar_t__ DBUS_TYPE_VARIANT ; 
 int /*<<< orphan*/ * FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char*) ; 
 char* psz_folder ; 
 size_t FUNC12 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/ * FUNC13 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static vlc_keystore_entry*
FUNC17( vlc_keystore* p_keystore, char* psz_entry_name,
                            unsigned int* pi_count )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    DBusMessage* msg = NULL;
    DBusMessage* repmsg = NULL;
    DBusMessageIter args;
    DBusMessageIter sub_iter;
    DBusMessageIter dict_iter;
    DBusMessageIter var_iter;
    vlc_keystore_entry* p_entries = NULL;
    size_t i_size;
    uint8_t* p_secret_decoded = NULL;
    char* p_reply;
    char* p_secret;
    int i = 0;

    /* init */
    *pi_count = 0;
    if ( !( msg = FUNC13( p_keystore, "readPasswordList" ) ) )
    {
        FUNC11( p_keystore, "kwallet_read_password_list : vlc_dbus_new_method failed" );
        goto error;
    }

    /* argument init */
    FUNC5( msg, &args );
    if ( !FUNC1( &args, DBUS_TYPE_INT32, &p_sys->i_handle ) ||
         !FUNC1( &args, DBUS_TYPE_STRING, &psz_folder ) ||
         !FUNC1( &args, DBUS_TYPE_STRING, &psz_entry_name ) ||
         !FUNC1( &args, DBUS_TYPE_STRING, &p_sys->psz_app_id ) )
        goto error;

    /* sending message */
    if ( !( repmsg = FUNC14( p_keystore, msg ) ) )
    {
        FUNC11( p_keystore, "kwallet_read_password_list : vlc_dbus_send_message failed" );
        goto error;
    }

    /* handling reply */
    if ( !FUNC4( repmsg, &args ) )
    {
        FUNC11( p_keystore, "kwallet_read_password_list : Message has no arguments" );
        goto error;
    }
    else if ( FUNC2(&args) != DBUS_TYPE_ARRAY )
    {
        FUNC11( p_keystore, "kwallet_read_password_list : Wrong reply type" );
        goto error;
    }
    else
    {
        /* calculating p_entries's size */
        FUNC7( &args, &sub_iter );
        do
        {
            if ( FUNC2( &sub_iter ) != DBUS_TYPE_DICT_ENTRY )
                continue;
            FUNC7( &sub_iter, &dict_iter );
            if ( FUNC2( &dict_iter ) != DBUS_TYPE_STRING )
                continue;
            FUNC6(&dict_iter);
            if ( FUNC2( &dict_iter ) != DBUS_TYPE_VARIANT )
                continue;
            ++( *pi_count );
       } while ( FUNC6( &sub_iter ) );

        if ( *pi_count == 0 )
            goto error;
        if ( !( p_entries = FUNC0( *pi_count, sizeof( vlc_keystore_entry ) ) ) )
            goto error;

        FUNC4( repmsg, &args );
        /* recurse into the reply array */
        FUNC7( &args, &sub_iter );
        do
        {
            if ( FUNC2( &sub_iter ) != DBUS_TYPE_DICT_ENTRY )
            {
                FUNC11( p_keystore, "Wrong type not DBUS_TYPE_DICT_ENTRY" );
                continue;
            }
            /* recurse into the dict-entry in the array */
            FUNC7( &sub_iter, &dict_iter );
            if ( FUNC2( &dict_iter ) != DBUS_TYPE_STRING )
            {
                FUNC11( p_keystore, "First type of Dict-Entry is not a string" );
                continue;
            }
            FUNC3( &dict_iter, &p_reply );
            FUNC6(&dict_iter);
            if ( FUNC2( &dict_iter ) != DBUS_TYPE_VARIANT )
            {
                FUNC11( p_keystore, "Second type of Dict-Entry is not a variant" );
                continue;
            }
            /* recurse into the variant in the dict-entry */
            FUNC7( &dict_iter, &var_iter );
            FUNC3( &var_iter, &p_secret );

            i_size = FUNC12( &p_secret_decoded, p_secret);
            if ( FUNC10( p_reply, &p_entries[i] ) )
                goto error;
            if ( ( FUNC15( &p_entries[i],
                                                  p_secret_decoded,
                                                  i_size ) ) )
                goto error;

            FUNC9(p_secret_decoded);
            i += 1;
        } while ( FUNC6( &sub_iter ) );
    }

    FUNC8( msg );
    FUNC8( repmsg );

    return p_entries;

error:
    FUNC9( p_secret_decoded );
    *pi_count = 0;
    if ( p_entries )
        FUNC16( p_entries, i );
    if ( msg )
        FUNC8( msg );
    if ( repmsg )
        FUNC8( repmsg );
    return NULL;
}