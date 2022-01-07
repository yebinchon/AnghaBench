
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int libvlc_media_player_t ;


 int ** GetVouts (int *,size_t*) ;
 int free (int **) ;
 scalar_t__ isfinite (float) ;
 int var_SetBool (int *,char*,int) ;
 int var_SetFloat (int *,char*,float) ;
 int vout_Release (int *) ;

void libvlc_video_set_scale( libvlc_media_player_t *p_mp, float f_scale )
{
    if (isfinite(f_scale) && f_scale != 0.f)
        var_SetFloat (p_mp, "zoom", f_scale);
    var_SetBool (p_mp, "autoscale", f_scale == 0.f);


    size_t n;
    vout_thread_t **pp_vouts = GetVouts (p_mp, &n);
    for (size_t i = 0; i < n; i++)
    {
        vout_thread_t *p_vout = pp_vouts[i];

        if (isfinite(f_scale) && f_scale != 0.f)
            var_SetFloat (p_vout, "zoom", f_scale);
        var_SetBool (p_vout, "autoscale", f_scale == 0.f);
        vout_Release(p_vout);
    }
    free (pp_vouts);
}
