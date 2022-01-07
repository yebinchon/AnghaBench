
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_title; int psz_summary; int psz_artist; int thumbnails; } ;
typedef TYPE_1__ vlc_ml_album_t ;


 int free (int ) ;
 int vlc_ml_thumbnails_release (int ) ;

__attribute__((used)) static void vlc_ml_album_release_inner( vlc_ml_album_t* p_album )
{
    vlc_ml_thumbnails_release( p_album->thumbnails );
    free( p_album->psz_artist );
    free( p_album->psz_summary );
    free( p_album->psz_title );
}
