
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hosts_list_length; int hosts_list; } ;
typedef TYPE_1__ SSHModePrivateData ;
typedef int Mode ;


 int TRUE ;
 TYPE_1__* g_malloc0 (int) ;
 int get_ssh (TYPE_1__*,int *) ;
 int * mode_get_private_data (int *) ;
 int mode_set_private_data (int *,void*) ;

__attribute__((used)) static int ssh_mode_init ( Mode *sw )
{
    if ( mode_get_private_data ( sw ) == ((void*)0) ) {
        SSHModePrivateData *pd = g_malloc0 ( sizeof ( *pd ) );
        mode_set_private_data ( sw, (void *) pd );
        pd->hosts_list = get_ssh ( pd, &( pd->hosts_list_length ) );
    }
    return TRUE;
}
