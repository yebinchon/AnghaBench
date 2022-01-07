
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_name; int psz_artwork_mrl; } ;
typedef TYPE_1__ vlc_ml_playlist_t ;


 int free (int ) ;

__attribute__((used)) static void vlc_ml_playlist_release_inner( vlc_ml_playlist_t* p_playlist )
{
    free( p_playlist->psz_artwork_mrl );
    free( p_playlist->psz_name );
}
