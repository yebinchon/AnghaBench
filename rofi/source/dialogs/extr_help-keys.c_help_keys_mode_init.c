
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Mode ;
typedef int KeysHelpModePrivateData ;


 int TRUE ;
 int * g_malloc0 (int) ;
 int get_apps (int *) ;
 int * mode_get_private_data (int *) ;
 int mode_set_private_data (int *,void*) ;

__attribute__((used)) static int help_keys_mode_init ( Mode *sw )
{
    if ( mode_get_private_data ( sw ) == ((void*)0) ) {
        KeysHelpModePrivateData *pd = g_malloc0 ( sizeof ( *pd ) );
        mode_set_private_data ( sw, (void *) pd );
        get_apps ( pd );
    }
    return TRUE;
}
