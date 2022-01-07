
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tick_t ;
struct TYPE_3__ {int i_nztime; } ;
typedef TYPE_1__ demux_sys_t ;



__attribute__((used)) static inline vlc_tick_t MP4_GetMoviePTS(demux_sys_t *p_sys )
{
    return p_sys->i_nztime;
}
