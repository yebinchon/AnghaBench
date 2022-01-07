
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vlc_action_id_t ;
struct TYPE_7__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_6__ {int config; } ;


 int free (char*) ;
 scalar_t__ lirc_code2char (int ,char*,char**) ;
 scalar_t__ lirc_nextcode (char**) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 int strncmp (char*,char*,int) ;
 int var_SetInteger (int ,char*,scalar_t__) ;
 scalar_t__ vlc_actions_get_id (char*) ;
 int vlc_object_instance (TYPE_2__*) ;

__attribute__((used)) static void Process( intf_thread_t *p_intf )
{
    for( ;; )
    {
        char *code, *c;
        if( lirc_nextcode( &code ) )
            return;

        if( code == ((void*)0) )
            return;

        while( (lirc_code2char( p_intf->p_sys->config, code, &c ) == 0)
                && (c != ((void*)0)) )
        {
            if( !strncmp( "key-", c, 4 ) )
            {
                vlc_action_id_t i_key = vlc_actions_get_id( c );
                if( i_key )
                    var_SetInteger( vlc_object_instance(p_intf), "key-action", i_key );
                else
                    msg_Err( p_intf, "Unknown hotkey '%s'", c );
            }
            else
            {
                msg_Err( p_intf, "this doesn't appear to be a valid keycombo "
                                 "lirc sent us. Please look at the "
                                 "doc/lirc/example.lirc file in VLC" );
                break;
            }
        }
        free( code );
    }
}
