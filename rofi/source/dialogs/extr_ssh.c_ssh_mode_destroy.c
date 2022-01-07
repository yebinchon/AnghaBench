
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int hosts_list_length; struct TYPE_4__* hosts_list; int user_known_hosts; struct TYPE_4__* hostname; } ;
typedef TYPE_1__ SSHModePrivateData ;
typedef int Mode ;


 int g_free (TYPE_1__*) ;
 int g_list_free_full (int ,int (*) (TYPE_1__*)) ;
 scalar_t__ mode_get_private_data (int *) ;
 int mode_set_private_data (int *,int *) ;

__attribute__((used)) static void ssh_mode_destroy ( Mode *sw )
{
    SSHModePrivateData *rmpd = (SSHModePrivateData *) mode_get_private_data ( sw );
    if ( rmpd != ((void*)0) ) {
        for ( unsigned int i = 0; i < rmpd->hosts_list_length; i++ ){
            g_free( rmpd->hosts_list[i].hostname );
        }
        g_list_free_full ( rmpd->user_known_hosts, g_free );
        g_free ( rmpd->hosts_list );
        g_free ( rmpd );
        mode_set_private_data ( sw, ((void*)0) );
    }
}
