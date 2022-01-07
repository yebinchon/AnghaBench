
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int es_out_t ;


 int ES_OUT_SET_TIMES ;
 int assert (int) ;
 int es_out_Control (int *,int ,double,int ,int ,int ) ;

__attribute__((used)) static inline void es_out_SetTimes( es_out_t *p_out, double f_position,
                                    vlc_tick_t i_time, vlc_tick_t i_normal_time,
                                    vlc_tick_t i_length )
{
    int i_ret = es_out_Control( p_out, ES_OUT_SET_TIMES, f_position, i_time,
                                i_normal_time, i_length );
    assert( !i_ret );
}
