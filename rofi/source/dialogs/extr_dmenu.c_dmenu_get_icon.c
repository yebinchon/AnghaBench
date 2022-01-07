
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cairo_surface_t ;
struct TYPE_4__ {TYPE_1__* cmd_list; } ;
struct TYPE_3__ {scalar_t__ icon_fetch_uid; int * icon_name; } ;
typedef int Mode ;
typedef TYPE_1__ DmenuScriptEntry ;
typedef TYPE_2__ DmenuModePrivateData ;


 int g_return_val_if_fail (int ,int *) ;
 scalar_t__ mode_get_private_data (int const*) ;
 int * rofi_icon_fetcher_get (scalar_t__) ;
 scalar_t__ rofi_icon_fetcher_query (int *,int) ;

__attribute__((used)) static cairo_surface_t *dmenu_get_icon ( const Mode *sw, unsigned int selected_line, int height )
{
    DmenuModePrivateData *pd = (DmenuModePrivateData *) mode_get_private_data ( sw );
    g_return_val_if_fail ( pd->cmd_list != ((void*)0), ((void*)0) );
    DmenuScriptEntry *dr = &( pd->cmd_list[selected_line] );
    if ( dr->icon_name == ((void*)0) ) {
        return ((void*)0);
    }
    if ( dr->icon_fetch_uid > 0 ) {
        return rofi_icon_fetcher_get ( dr->icon_fetch_uid );
    }
    dr->icon_fetch_uid = rofi_icon_fetcher_query ( dr->icon_name, height );
    return rofi_icon_fetcher_get ( dr->icon_fetch_uid );
}
