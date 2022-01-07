
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int psz_imdb_id; int psz_summary; } ;
struct TYPE_5__ {int psz_tvdb_id; int psz_summary; } ;
struct TYPE_7__ {int i_subtype; TYPE_2__ movie; TYPE_1__ show_episode; int thumbnails; int psz_title; int p_tracks; int p_files; } ;
typedef TYPE_3__ vlc_ml_media_t ;





 int free (int ) ;
 int vlc_ml_file_list_release (int ) ;
 int vlc_ml_media_release_tracks_inner (int ) ;
 int vlc_ml_thumbnails_release (int ) ;

__attribute__((used)) static void vlc_ml_media_release_inner( vlc_ml_media_t* p_media )
{
    vlc_ml_file_list_release( p_media->p_files );
    vlc_ml_media_release_tracks_inner( p_media->p_tracks );
    free( p_media->psz_title );
    vlc_ml_thumbnails_release( p_media->thumbnails );
    switch( p_media->i_subtype )
    {
        case 130:
            break;
        case 128:
            free( p_media->show_episode.psz_summary );
            free( p_media->show_episode.psz_tvdb_id );
            break;
        case 129:
            free( p_media->movie.psz_summary );
            free( p_media->movie.psz_imdb_id );
            break;
        default:
            break;
    }
}
