
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input_item_t ;


 int free (char*) ;
 char* input_item_GetMeta (int *,int ) ;
 scalar_t__ strlen (char*) ;
 int vlc_meta_ESNowPlaying ;
 int vlc_meta_NowPlaying ;

char *input_item_GetNowPlayingFb( input_item_t *p_item )
{
    char *psz_meta = input_item_GetMeta( p_item, vlc_meta_NowPlaying );
    if( !psz_meta || strlen( psz_meta ) == 0 )
    {
        free( psz_meta );
        return input_item_GetMeta( p_item, vlc_meta_ESNowPlaying );
    }

    return psz_meta;
}
