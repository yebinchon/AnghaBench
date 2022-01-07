
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ sout_mux_t ;
struct TYPE_5__ {int i_pos; int i_segment_start; int i_data_start; } ;
typedef TYPE_2__ sout_mux_sys_t ;


 int SetQWLE (int *,int) ;
 int SetWLE (int *,int) ;
 int memcpy (int *,char*,int) ;

__attribute__((used)) static void OggFillSkeletonFishead( uint8_t *p_buffer, sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    memcpy( p_buffer, "fishead", 8 );
    SetWLE( &p_buffer[8], 4 );
    SetWLE( &p_buffer[10], 0 );
    SetQWLE( &p_buffer[20], 1000 );
    SetQWLE( &p_buffer[36], 1000 );
    SetQWLE( &p_buffer[64], p_sys->i_pos - p_sys->i_segment_start );
    SetQWLE( &p_buffer[72], p_sys->i_data_start - p_sys->i_segment_start );
}
