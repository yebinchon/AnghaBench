
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* psz_name; int lock; scalar_t__ p_meta; } ;
typedef TYPE_1__ input_item_t ;


 char* ArtCacheGetDirPath (char const*,char const*,char const*,char const*,char const*) ;
 scalar_t__ EMPTY_STR (char const*) ;
 int vlc_meta_Album ;
 int vlc_meta_Artist ;
 int vlc_meta_ArtworkURL ;
 int vlc_meta_Date ;
 char* vlc_meta_Get (scalar_t__,int ) ;
 scalar_t__ vlc_meta_New () ;
 int vlc_meta_Title ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static char *ArtCachePath( input_item_t *p_item )
{
    char* psz_path = ((void*)0);
    const char *psz_artist;
    const char *psz_album;
    const char *psz_arturl;
    const char *psz_title;
    const char *psz_date;

    vlc_mutex_lock( &p_item->lock );

    if( !p_item->p_meta )
        p_item->p_meta = vlc_meta_New();
    if( !p_item->p_meta )
        goto end;

    psz_artist = vlc_meta_Get( p_item->p_meta, vlc_meta_Artist );
    psz_album = vlc_meta_Get( p_item->p_meta, vlc_meta_Album );
    psz_arturl = vlc_meta_Get( p_item->p_meta, vlc_meta_ArtworkURL );
    psz_title = vlc_meta_Get( p_item->p_meta, vlc_meta_Title );
    psz_date = vlc_meta_Get( p_item->p_meta, vlc_meta_Date );
    if( !psz_title )
        psz_title = p_item->psz_name;

    if( (EMPTY_STR(psz_artist) || EMPTY_STR(psz_album) ) && !psz_arturl )
        goto end;

    psz_path = ArtCacheGetDirPath( psz_arturl, psz_artist, psz_album, psz_date, psz_title );

end:
    vlc_mutex_unlock( &p_item->lock );
    return psz_path;
}
