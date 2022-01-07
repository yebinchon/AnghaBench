
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ message; } ;
typedef int Mode ;
typedef TYPE_1__ DmenuModePrivateData ;


 char* g_strdup (scalar_t__) ;
 scalar_t__ mode_get_private_data (int const*) ;

__attribute__((used)) static char *dmenu_get_message ( const Mode *sw )
{
    DmenuModePrivateData *pd = (DmenuModePrivateData *) mode_get_private_data ( sw );
    if ( pd->message ) {
        return g_strdup ( pd->message );
    }
    return ((void*)0);
}
