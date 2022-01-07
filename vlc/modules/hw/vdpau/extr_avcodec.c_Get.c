
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_vdp_video_field_t ;
typedef int vlc_va_sys_t ;


 int * GetSurface (int *) ;
 unsigned int VLC_TICK_FROM_SEC (int) ;
 unsigned int VOUT_OUTMEM_SLEEP ;
 int vlc_tick_sleep (unsigned int) ;

__attribute__((used)) static vlc_vdp_video_field_t *Get(vlc_va_sys_t *sys)
{
    vlc_vdp_video_field_t *field;
    unsigned tries = (VLC_TICK_FROM_SEC(1) + VOUT_OUTMEM_SLEEP) / VOUT_OUTMEM_SLEEP;

    while ((field = GetSurface(sys)) == ((void*)0))
    {
        if (--tries == 0)
            return ((void*)0);


        vlc_tick_sleep(VOUT_OUTMEM_SLEEP);
    }

    return field;
}
