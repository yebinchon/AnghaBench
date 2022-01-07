
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int uint64_t ;
struct aout_sys_common {int i_rate; } ;


 int vlc_tick_from_samples (int ,int ) ;

__attribute__((used)) static inline vlc_tick_t
FramesToUs(struct aout_sys_common *p_sys, uint64_t i_nb_frames)
{
    return vlc_tick_from_samples(i_nb_frames, p_sys->i_rate);
}
