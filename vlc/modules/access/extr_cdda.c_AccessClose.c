
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_meta_t ;
struct TYPE_3__ {int cdtextc; int p_toc; scalar_t__ mbrecord; int * cddb; int ** cdtextv; } ;
typedef TYPE_1__ access_sys_t ;


 int cddb_disc_destroy (int *) ;
 int free (int **) ;
 int musicbrainz_recording_release (scalar_t__) ;
 int vcddev_toc_Free (int ) ;
 int vlc_meta_Delete (int *) ;

__attribute__((used)) static void AccessClose(access_sys_t *sys)
{
    for (int i = 0; i < sys->cdtextc; i++)
    {
        vlc_meta_t *meta = sys->cdtextv[i];
        if (meta != ((void*)0))
            vlc_meta_Delete(meta);
    }
    free(sys->cdtextv);





    if(sys->mbrecord)
        musicbrainz_recording_release(sys->mbrecord);
    vcddev_toc_Free(sys->p_toc);
}
