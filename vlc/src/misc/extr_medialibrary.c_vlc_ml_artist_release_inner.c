
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_mb_id; int psz_shortbio; int psz_name; int thumbnails; } ;
typedef TYPE_1__ vlc_ml_artist_t ;


 int free (int ) ;
 int vlc_ml_thumbnails_release (int ) ;

__attribute__((used)) static void vlc_ml_artist_release_inner( vlc_ml_artist_t* p_artist )
{
    vlc_ml_thumbnails_release( p_artist->thumbnails );
    free( p_artist->psz_name );
    free( p_artist->psz_shortbio );
    free( p_artist->psz_mb_id );
}
