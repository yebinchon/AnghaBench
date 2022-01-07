
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int es_out_t ;


 int ES_OUT_SET_JITTER ;
 int assert (int) ;
 int es_out_Control (int *,int ,int ,int ,int) ;

__attribute__((used)) static inline void es_out_SetJitter( es_out_t *p_out,
                                     vlc_tick_t i_pts_delay, vlc_tick_t i_pts_jitter, int i_cr_average )
{
    int i_ret = es_out_Control( p_out, ES_OUT_SET_JITTER,
                                i_pts_delay, i_pts_jitter, i_cr_average );
    assert( !i_ret );
}
