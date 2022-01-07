
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int p_meta; } ;
typedef TYPE_1__ input_item_t ;


 scalar_t__ asprintf (char**,char*,char const*,int ,char const*,int ,char const*) ;
 int strlen (char const*) ;
 int vlc_meta_Album ;
 int vlc_meta_Artist ;
 int vlc_meta_Date ;
 char* vlc_meta_Get (int ,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static char* CreateCacheKey( input_item_t* item )
{
    vlc_mutex_lock( &item->lock );

    if( !item->p_meta )
    {
        vlc_mutex_unlock( &item->lock );
        return ((void*)0);
    }

    char const* artist = vlc_meta_Get( item->p_meta, vlc_meta_Artist );
    char const* album = vlc_meta_Get( item->p_meta, vlc_meta_Album );
    char const *date = vlc_meta_Get( item->p_meta, vlc_meta_Date );
    char* key;





    if( !artist || !album || asprintf( &key, "%s:%zu:%s:%zu:%s",
          artist, strlen( artist ), album, strlen( album ),
          date ? date : "0000" ) < 0 )
    {
        key = ((void*)0);
    }
    vlc_mutex_unlock( &item->lock );

    return key;
}
