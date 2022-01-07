
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* i_handle; char* psz_app_id; } ;
typedef TYPE_1__ vlc_keystore_sys ;
typedef int vlc_keystore_entry ;
struct TYPE_8__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ vlc_keystore ;
typedef int uint8_t ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;


 scalar_t__ DBUS_TYPE_ARRAY ;
 scalar_t__ DBUS_TYPE_DICT_ENTRY ;
 scalar_t__ DBUS_TYPE_INT32 ;
 scalar_t__ DBUS_TYPE_STRING ;
 scalar_t__ DBUS_TYPE_VARIANT ;
 int * calloc (unsigned int,int) ;
 int dbus_message_iter_append_basic (int *,scalar_t__,char**) ;
 scalar_t__ dbus_message_iter_get_arg_type (int *) ;
 int dbus_message_iter_get_basic (int *,char**) ;
 int dbus_message_iter_init (int *,int *) ;
 int dbus_message_iter_init_append (int *,int *) ;
 scalar_t__ dbus_message_iter_next (int *) ;
 int dbus_message_iter_recurse (int *,int *) ;
 int dbus_message_unref (int *) ;
 int free (int *) ;
 scalar_t__ key2values (char*,int *) ;
 int msg_Err (TYPE_2__*,char*) ;
 char* psz_folder ;
 size_t vlc_b64_decode_binary (int **,char*) ;
 int * vlc_dbus_new_method (TYPE_2__*,char*) ;
 int * vlc_dbus_send_message (TYPE_2__*,int *) ;
 scalar_t__ vlc_keystore_entry_set_secret (int *,int *,size_t) ;
 int vlc_keystore_release_entries (int *,int) ;

__attribute__((used)) static vlc_keystore_entry*
kwallet_read_password_list( vlc_keystore* p_keystore, char* psz_entry_name,
                            unsigned int* pi_count )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    DBusMessage* msg = ((void*)0);
    DBusMessage* repmsg = ((void*)0);
    DBusMessageIter args;
    DBusMessageIter sub_iter;
    DBusMessageIter dict_iter;
    DBusMessageIter var_iter;
    vlc_keystore_entry* p_entries = ((void*)0);
    size_t i_size;
    uint8_t* p_secret_decoded = ((void*)0);
    char* p_reply;
    char* p_secret;
    int i = 0;


    *pi_count = 0;
    if ( !( msg = vlc_dbus_new_method( p_keystore, "readPasswordList" ) ) )
    {
        msg_Err( p_keystore, "kwallet_read_password_list : vlc_dbus_new_method failed" );
        goto error;
    }


    dbus_message_iter_init_append( msg, &args );
    if ( !dbus_message_iter_append_basic( &args, DBUS_TYPE_INT32, &p_sys->i_handle ) ||
         !dbus_message_iter_append_basic( &args, DBUS_TYPE_STRING, &psz_folder ) ||
         !dbus_message_iter_append_basic( &args, DBUS_TYPE_STRING, &psz_entry_name ) ||
         !dbus_message_iter_append_basic( &args, DBUS_TYPE_STRING, &p_sys->psz_app_id ) )
        goto error;


    if ( !( repmsg = vlc_dbus_send_message( p_keystore, msg ) ) )
    {
        msg_Err( p_keystore, "kwallet_read_password_list : vlc_dbus_send_message failed" );
        goto error;
    }


    if ( !dbus_message_iter_init( repmsg, &args ) )
    {
        msg_Err( p_keystore, "kwallet_read_password_list : Message has no arguments" );
        goto error;
    }
    else if ( dbus_message_iter_get_arg_type(&args) != DBUS_TYPE_ARRAY )
    {
        msg_Err( p_keystore, "kwallet_read_password_list : Wrong reply type" );
        goto error;
    }
    else
    {

        dbus_message_iter_recurse( &args, &sub_iter );
        do
        {
            if ( dbus_message_iter_get_arg_type( &sub_iter ) != DBUS_TYPE_DICT_ENTRY )
                continue;
            dbus_message_iter_recurse( &sub_iter, &dict_iter );
            if ( dbus_message_iter_get_arg_type( &dict_iter ) != DBUS_TYPE_STRING )
                continue;
            dbus_message_iter_next(&dict_iter);
            if ( dbus_message_iter_get_arg_type( &dict_iter ) != DBUS_TYPE_VARIANT )
                continue;
            ++( *pi_count );
       } while ( dbus_message_iter_next( &sub_iter ) );

        if ( *pi_count == 0 )
            goto error;
        if ( !( p_entries = calloc( *pi_count, sizeof( vlc_keystore_entry ) ) ) )
            goto error;

        dbus_message_iter_init( repmsg, &args );

        dbus_message_iter_recurse( &args, &sub_iter );
        do
        {
            if ( dbus_message_iter_get_arg_type( &sub_iter ) != DBUS_TYPE_DICT_ENTRY )
            {
                msg_Err( p_keystore, "Wrong type not DBUS_TYPE_DICT_ENTRY" );
                continue;
            }

            dbus_message_iter_recurse( &sub_iter, &dict_iter );
            if ( dbus_message_iter_get_arg_type( &dict_iter ) != DBUS_TYPE_STRING )
            {
                msg_Err( p_keystore, "First type of Dict-Entry is not a string" );
                continue;
            }
            dbus_message_iter_get_basic( &dict_iter, &p_reply );
            dbus_message_iter_next(&dict_iter);
            if ( dbus_message_iter_get_arg_type( &dict_iter ) != DBUS_TYPE_VARIANT )
            {
                msg_Err( p_keystore, "Second type of Dict-Entry is not a variant" );
                continue;
            }

            dbus_message_iter_recurse( &dict_iter, &var_iter );
            dbus_message_iter_get_basic( &var_iter, &p_secret );

            i_size = vlc_b64_decode_binary( &p_secret_decoded, p_secret);
            if ( key2values( p_reply, &p_entries[i] ) )
                goto error;
            if ( ( vlc_keystore_entry_set_secret( &p_entries[i],
                                                  p_secret_decoded,
                                                  i_size ) ) )
                goto error;

            free(p_secret_decoded);
            i += 1;
        } while ( dbus_message_iter_next( &sub_iter ) );
    }

    dbus_message_unref( msg );
    dbus_message_unref( repmsg );

    return p_entries;

error:
    free( p_secret_decoded );
    *pi_count = 0;
    if ( p_entries )
        vlc_keystore_release_entries( p_entries, i );
    if ( msg )
        dbus_message_unref( msg );
    if ( repmsg )
        dbus_message_unref( repmsg );
    return ((void*)0);
}
