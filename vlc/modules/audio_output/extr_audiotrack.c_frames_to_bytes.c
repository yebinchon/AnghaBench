
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_4__ {size_t i_bytes_per_frame; size_t i_frame_length; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
typedef TYPE_2__ aout_sys_t ;



__attribute__((used)) static inline size_t
frames_to_bytes( aout_sys_t *p_sys, uint64_t i_frames )
{
    return i_frames * p_sys->fmt.i_bytes_per_frame / p_sys->fmt.i_frame_length;
}
