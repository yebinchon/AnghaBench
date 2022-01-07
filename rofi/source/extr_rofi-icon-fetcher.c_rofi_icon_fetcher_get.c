
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int cairo_surface_t ;
struct TYPE_5__ {int icon_cache_uid; } ;
struct TYPE_4__ {int * surface; } ;
typedef TYPE_1__ IconFetcherEntry ;


 int GINT_TO_POINTER (int const) ;
 TYPE_1__* g_hash_table_lookup (int ,int ) ;
 TYPE_2__* rofi_icon_fetcher_data ;

cairo_surface_t * rofi_icon_fetcher_get ( const uint32_t uid )
{
    IconFetcherEntry *sentry = g_hash_table_lookup ( rofi_icon_fetcher_data->icon_cache_uid, GINT_TO_POINTER ( uid ) );
    if ( sentry ) {
        return sentry->surface;
    }
    return ((void*)0);
}
