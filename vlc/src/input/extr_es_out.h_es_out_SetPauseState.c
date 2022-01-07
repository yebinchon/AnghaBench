
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int es_out_t ;


 int ES_OUT_SET_PAUSE_STATE ;
 int es_out_Control (int *,int ,int,int,int ) ;

__attribute__((used)) static inline int es_out_SetPauseState( es_out_t *p_out, bool b_source_paused, bool b_paused, vlc_tick_t i_date )
{
    return es_out_Control( p_out, ES_OUT_SET_PAUSE_STATE, b_source_paused, b_paused, i_date );
}
