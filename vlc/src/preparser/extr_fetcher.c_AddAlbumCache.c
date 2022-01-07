
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_item_t ;
struct TYPE_3__ {int lock; int album_cache; } ;
typedef TYPE_1__ input_fetcher_t ;


 char* CreateCacheKey (int *) ;
 int free (char*) ;
 char* input_item_GetArtURL (int *) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 int vlc_dictionary_has_key (int *,char*) ;
 int vlc_dictionary_insert (int *,char*,char*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void AddAlbumCache( input_fetcher_t* fetcher, input_item_t* item,
                           bool overwrite )
{
    char* art = input_item_GetArtURL( item );
    char* key = CreateCacheKey( item );

    if( key && art && strncasecmp( art, "attachment://", 13 ) )
    {
        vlc_mutex_lock( &fetcher->lock );
        if( overwrite || !vlc_dictionary_has_key( &fetcher->album_cache, key ) )
        {
            vlc_dictionary_insert( &fetcher->album_cache, key, art );
            art = ((void*)0);
        }
        vlc_mutex_unlock( &fetcher->lock );
    }

    free( art );
    free( key );
}
