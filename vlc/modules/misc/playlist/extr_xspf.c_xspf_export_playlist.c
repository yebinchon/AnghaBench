
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_item_t ;
typedef int vlc_object_t ;
struct vlc_playlist_export {int file; int playlist_view; } ;
typedef int input_item_t ;


 int VLC_SUCCESS ;
 int fprintf (int ,char*) ;
 int * vlc_playlist_item_GetMedia (int *) ;
 size_t vlc_playlist_view_Count (int ) ;
 int * vlc_playlist_view_Get (int ,size_t) ;
 int xspf_export_item (int *,int ,size_t) ;

int xspf_export_playlist( vlc_object_t *p_this )
{
    struct vlc_playlist_export *p_export = (struct vlc_playlist_export *) p_this;


    fprintf( p_export->file, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" );
    fprintf( p_export->file,
             "<playlist xmlns=\"http://xspf.org/ns/0/\" " "xmlns:vlc=\"http://www.videolan.org/vlc/playlist/ns/0/\" " "version=\"1\">\n" );



    fprintf( p_export->file, "\t<trackList>\n" );
    size_t count = vlc_playlist_view_Count(p_export->playlist_view);
    for( size_t i = 0; i < count; ++i )
    {
        vlc_playlist_item_t *item =
            vlc_playlist_view_Get(p_export->playlist_view, i);
        input_item_t *media = vlc_playlist_item_GetMedia(item);

        xspf_export_item(media, p_export->file, i);
    }

    fprintf( p_export->file, "\t</trackList>\n" );


    fprintf( p_export->file, "</playlist>\n" );

    return VLC_SUCCESS;
}
