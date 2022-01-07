
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int icon_cache; int icon_cache_uid; int xdg_context; } ;


 int g_free (TYPE_1__*) ;
 int g_hash_table_unref (int ) ;
 int nk_xdg_theme_context_free (int ) ;
 TYPE_1__* rofi_icon_fetcher_data ;

void rofi_icon_fetcher_destroy ( void )
{
    if ( rofi_icon_fetcher_data == ((void*)0) ) {
        return;
    }

    nk_xdg_theme_context_free ( rofi_icon_fetcher_data->xdg_context );

    g_hash_table_unref ( rofi_icon_fetcher_data->icon_cache_uid );
    g_hash_table_unref ( rofi_icon_fetcher_data->icon_cache );

    g_free ( rofi_icon_fetcher_data );
}
