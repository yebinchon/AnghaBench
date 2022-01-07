
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int libvlc_time_t ;


 int VLC_TICK_FROM_MS (int ) ;

__attribute__((used)) static inline vlc_tick_t to_mtime(libvlc_time_t time)
{
    return VLC_TICK_FROM_MS(time);
}
