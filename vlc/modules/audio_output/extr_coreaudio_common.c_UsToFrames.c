
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int uint64_t ;
struct aout_sys_common {int i_rate; } ;


 int samples_from_vlc_tick (int ,int ) ;

__attribute__((used)) static inline uint64_t
UsToFrames(struct aout_sys_common *p_sys, vlc_tick_t i_us)
{
    return samples_from_vlc_tick(i_us, p_sys->i_rate);
}
