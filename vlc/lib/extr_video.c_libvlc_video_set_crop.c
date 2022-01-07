
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int libvlc_media_player_t ;


 int ** GetVouts (int *,size_t*) ;
 int free (int **) ;
 int var_SetString (int *,char*,char const*) ;
 int vout_Release (int *) ;

__attribute__((used)) static void libvlc_video_set_crop(libvlc_media_player_t *mp,
                                  const char *geometry)
{
    var_SetString(mp, "crop", geometry);

    size_t n;
    vout_thread_t **vouts = GetVouts(mp, &n);

    for (size_t i = 0; i < n; i++)
    {
        var_SetString(vouts[i], "crop", geometry);
        vout_Release(vouts[i]);
    }
    free(vouts);
}
