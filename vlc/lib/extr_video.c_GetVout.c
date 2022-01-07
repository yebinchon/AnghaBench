
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int libvlc_media_player_t ;


 int ** GetVouts (int *,size_t*) ;
 int free (int **) ;
 int libvlc_printerr (char*) ;
 int vout_Release (int *) ;

__attribute__((used)) static vout_thread_t *GetVout (libvlc_media_player_t *mp, size_t num)
{
    vout_thread_t *p_vout = ((void*)0);
    size_t n;
    vout_thread_t **pp_vouts = GetVouts (mp, &n);
    if (pp_vouts == ((void*)0))
        goto err;

    if (num < n)
        p_vout = pp_vouts[num];

    for (size_t i = 0; i < n; i++)
        if (i != num)
            vout_Release(pp_vouts[i]);
    free (pp_vouts);

    if (p_vout == ((void*)0))
err:
        libvlc_printerr ("Video output not active");
    return p_vout;
}
