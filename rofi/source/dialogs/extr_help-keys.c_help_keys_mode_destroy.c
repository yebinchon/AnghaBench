
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int messages; } ;
typedef int Mode ;
typedef TYPE_1__ KeysHelpModePrivateData ;


 int g_free (TYPE_1__*) ;
 int g_strfreev (int ) ;
 scalar_t__ mode_get_private_data (int *) ;
 int mode_set_private_data (int *,int *) ;

__attribute__((used)) static void help_keys_mode_destroy ( Mode *sw )
{
    KeysHelpModePrivateData *rmpd = (KeysHelpModePrivateData *) mode_get_private_data ( sw );
    if ( rmpd != ((void*)0) ) {
        g_strfreev ( rmpd->messages );
        g_free ( rmpd );
        mode_set_private_data ( sw, ((void*)0) );
    }
}
