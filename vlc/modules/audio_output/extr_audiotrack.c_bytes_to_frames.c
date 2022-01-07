
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_4__ {size_t i_frame_length; size_t i_bytes_per_frame; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
typedef TYPE_2__ aout_sys_t ;



__attribute__((used)) static inline uint64_t
bytes_to_frames( aout_sys_t *p_sys, size_t i_bytes )
{
    return i_bytes * p_sys->fmt.i_frame_length / p_sys->fmt.i_bytes_per_frame;
}
