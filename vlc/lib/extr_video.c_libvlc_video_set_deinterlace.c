
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int libvlc_media_player_t ;


 int ** GetVouts (int *,size_t*) ;
 int free (int **) ;
 scalar_t__ strcmp (char const*,char*) ;
 int var_SetInteger (int *,char*,int) ;
 int var_SetString (int *,char*,char const*) ;
 int vout_Release (int *) ;

void libvlc_video_set_deinterlace( libvlc_media_player_t *p_mi, int deinterlace,
                                   const char *psz_mode )
{
    if (deinterlace != 0 && deinterlace != 1)
        deinterlace = -1;

    if (psz_mode
     && strcmp (psz_mode, "blend") && strcmp (psz_mode, "bob")
     && strcmp (psz_mode, "discard") && strcmp (psz_mode, "linear")
     && strcmp (psz_mode, "mean") && strcmp (psz_mode, "x")
     && strcmp (psz_mode, "yadif") && strcmp (psz_mode, "yadif2x")
     && strcmp (psz_mode, "phosphor") && strcmp (psz_mode, "ivtc")
     && strcmp (psz_mode, "auto"))
        return;

    if (psz_mode && deinterlace != 0)
        var_SetString (p_mi, "deinterlace-mode", psz_mode);

    var_SetInteger (p_mi, "deinterlace", deinterlace);

    size_t n;
    vout_thread_t **pp_vouts = GetVouts (p_mi, &n);
    for (size_t i = 0; i < n; i++)
    {
        vout_thread_t *p_vout = pp_vouts[i];

        if (psz_mode && deinterlace != 0)
            var_SetString (p_vout, "deinterlace-mode", psz_mode);

        var_SetInteger (p_vout, "deinterlace", deinterlace);
        vout_Release(p_vout);
    }
    free (pp_vouts);
}
