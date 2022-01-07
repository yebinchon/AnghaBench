
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int es_out_t ;


 int ES_OUT_GET_WAKE_UP ;
 int assert (int) ;
 int es_out_Control (int *,int ,int *) ;

__attribute__((used)) static inline vlc_tick_t es_out_GetWakeup( es_out_t *p_out )
{
    vlc_tick_t i_wu;
    int i_ret = es_out_Control( p_out, ES_OUT_GET_WAKE_UP, &i_wu );

    assert( !i_ret );
    return i_wu;
}
