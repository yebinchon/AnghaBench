
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char gchar ;
struct TYPE_5__ {char const* icon_theme; } ;
struct TYPE_4__ {int icon_cache; int icon_cache_uid; int xdg_context; } ;
typedef int IconFetcher ;


 TYPE_3__ config ;
 int g_assert (int ) ;
 int g_direct_equal ;
 int g_direct_hash ;
 int g_hash_table_new (int ,int ) ;
 int g_hash_table_new_full (int ,int ,int *,int ) ;
 TYPE_1__* g_malloc0 (int) ;
 int g_str_equal ;
 int g_str_hash ;
 int nk_xdg_theme_context_new (char const* const*,int *) ;
 int nk_xdg_theme_preload_themes_icon (int ,char const**) ;
 int rofi_icon_fetch_entry_free ;
 TYPE_1__* rofi_icon_fetcher_data ;

void rofi_icon_fetcher_init ( void )
{
    g_assert ( rofi_icon_fetcher_data == ((void*)0) );

    static const gchar * const icon_fallback_themes[] = {
        "Adwaita",
        "gnome",
        ((void*)0)
    };
    const char *themes[2] = { config.icon_theme, ((void*)0) };

    rofi_icon_fetcher_data = g_malloc0 ( sizeof ( IconFetcher ) );

    rofi_icon_fetcher_data->xdg_context = nk_xdg_theme_context_new ( icon_fallback_themes, ((void*)0) );
    nk_xdg_theme_preload_themes_icon ( rofi_icon_fetcher_data->xdg_context, themes );

    rofi_icon_fetcher_data->icon_cache_uid = g_hash_table_new ( g_direct_hash, g_direct_equal );
    rofi_icon_fetcher_data->icon_cache = g_hash_table_new_full ( g_str_hash, g_str_equal, ((void*)0), rofi_icon_fetch_entry_free );
}
