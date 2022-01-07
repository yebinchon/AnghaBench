
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int vlc_playlist_item_t ;
struct vlc_playlist_export {int file; int playlist_view; } ;
typedef int input_item_t ;


 int SEC_FROM_VLC_TICK (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int free (char*) ;
 char* input_item_GetArtist (int *) ;
 int input_item_GetDuration (int *) ;
 char* input_item_GetName (int *) ;
 int * vlc_playlist_item_GetMedia (int *) ;
 size_t vlc_playlist_view_Count (int ) ;
 int * vlc_playlist_view_Get (int ,size_t) ;
 char* vlc_xml_encode (char*) ;

__attribute__((used)) static void DoExport( struct vlc_playlist_export *p_export )
{

    size_t count = vlc_playlist_view_Count(p_export->playlist_view);
    for( size_t i = 0; i < count; ++i )
    {
        vlc_playlist_item_t *item =
            vlc_playlist_view_Get(p_export->playlist_view, i);

        input_item_t *media = vlc_playlist_item_GetMedia(item);

        char* psz_name = ((void*)0);
        char *psz_tmp = input_item_GetName(media);
        if( psz_tmp )
            psz_name = vlc_xml_encode( psz_tmp );
        free( psz_tmp );

        if( psz_name )
        {
            char* psz_artist = ((void*)0);
            psz_tmp = input_item_GetArtist(media);
            if( psz_tmp )
                psz_artist = vlc_xml_encode( psz_tmp );
            free( psz_tmp );

            vlc_tick_t i_duration = input_item_GetDuration(media);
            int min = SEC_FROM_VLC_TICK( i_duration ) / 60;
            int sec = SEC_FROM_VLC_TICK( i_duration ) - min * 60;


            if( psz_artist && *psz_artist )
                fprintf( p_export->file, "    <li>%s - %s (%02d:%02d)</li>\n", psz_artist, psz_name, min, sec );
            else
                fprintf( p_export->file, "    <li>%s (%2d:%2d)</li>\n", psz_name, min, sec);

            free( psz_artist );
        }
        free( psz_name );
    }
}
