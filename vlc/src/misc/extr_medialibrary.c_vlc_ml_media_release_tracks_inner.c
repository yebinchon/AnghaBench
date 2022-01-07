
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* psz_description; TYPE_2__* psz_language; TYPE_2__* psz_codec; } ;
typedef TYPE_1__ vlc_ml_media_track_t ;
struct TYPE_6__ {size_t i_nb_items; TYPE_1__* p_items; } ;
typedef TYPE_2__ vlc_ml_media_track_list_t ;


 int free (TYPE_2__*) ;

__attribute__((used)) static void vlc_ml_media_release_tracks_inner( vlc_ml_media_track_list_t* p_tracks )
{
    if ( p_tracks == ((void*)0) )
        return;
    for ( size_t i = 0; i < p_tracks->i_nb_items; ++i )
    {
        vlc_ml_media_track_t* p_track = &p_tracks->p_items[i];
        free( p_track->psz_codec );
        free( p_track->psz_language );
        free( p_track->psz_description );
    }
    free( p_tracks );
}
