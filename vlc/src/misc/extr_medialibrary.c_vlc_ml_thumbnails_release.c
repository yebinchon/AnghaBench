
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_mrl; } ;
typedef TYPE_1__ vlc_ml_thumbnail_t ;


 int VLC_ML_THUMBNAIL_SIZE_COUNT ;
 int free (int ) ;

__attribute__((used)) static void vlc_ml_thumbnails_release( vlc_ml_thumbnail_t *p_thumbnails )
{
    for ( int i = 0; i < VLC_ML_THUMBNAIL_SIZE_COUNT; ++i )
        free( p_thumbnails[i].psz_mrl );
}
