
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_item_t ;
struct TYPE_3__ {int lock; int album_cache; } ;
typedef TYPE_1__ input_fetcher_t ;


 char* CreateCacheKey (int *) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int free (char*) ;
 int input_item_SetArtURL (int *,char const*) ;
 char* vlc_dictionary_value_for_key (int *,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static int ReadAlbumCache( input_fetcher_t* fetcher, input_item_t* item )
{
    char* key = CreateCacheKey( item );

    if( key == ((void*)0) )
        return VLC_EGENERIC;

    vlc_mutex_lock( &fetcher->lock );
    char const* art = vlc_dictionary_value_for_key( &fetcher->album_cache,
                                                    key );
    if( art )
        input_item_SetArtURL( item, art );
    vlc_mutex_unlock( &fetcher->lock );

    free( key );
    return art ? VLC_SUCCESS : VLC_EGENERIC;
}
