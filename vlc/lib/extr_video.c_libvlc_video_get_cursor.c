
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;
typedef int libvlc_media_player_t ;


 int * GetVout (int *,unsigned int) ;
 int var_GetCoords (int *,char*,int*,int*) ;
 int vout_Release (int *) ;

int libvlc_video_get_cursor( libvlc_media_player_t *mp, unsigned num,
                             int *restrict px, int *restrict py )
{
    vout_thread_t *p_vout = GetVout (mp, num);
    if (p_vout == ((void*)0))
        return -1;

    var_GetCoords (p_vout, "mouse-moved", px, py);
    vout_Release(p_vout);
    return 0;
}
