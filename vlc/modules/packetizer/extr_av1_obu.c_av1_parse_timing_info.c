
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct av1_timing_info_s {int num_ticks_per_picture_minus_1; scalar_t__ equal_picture_interval; void* time_scale; void* num_units_in_display_tick; } ;
typedef int bs_t ;


 void* bs_read (int *,int) ;
 scalar_t__ bs_read1 (int *) ;
 int bs_read_ue (int *) ;

__attribute__((used)) static bool av1_parse_timing_info(bs_t *p_bs, struct av1_timing_info_s *p_ti)
{
    p_ti->num_units_in_display_tick = bs_read(p_bs, 32);
    p_ti->time_scale = bs_read(p_bs, 32);
    p_ti->equal_picture_interval = bs_read1(p_bs);
    if(p_ti->equal_picture_interval)
        p_ti->num_ticks_per_picture_minus_1 = bs_read_ue(p_bs);
    return 1;
}
