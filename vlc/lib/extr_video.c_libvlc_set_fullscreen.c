
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int libvlc_media_player_t ;


 int ** GetVouts (int *,size_t*) ;
 int free (int **) ;
 int var_SetBool (int *,char*,int) ;
 int vout_Release (int *) ;

void libvlc_set_fullscreen(libvlc_media_player_t *p_mi, bool b_fullscreen)
{

    var_SetBool(p_mi, "fullscreen", b_fullscreen);


    size_t n;
    vout_thread_t **pp_vouts = GetVouts (p_mi, &n);
    for (size_t i = 0; i < n; i++)
    {
        var_SetBool (pp_vouts[i], "fullscreen", b_fullscreen);
        vout_Release(pp_vouts[i]);
    }
    free (pp_vouts);
}
