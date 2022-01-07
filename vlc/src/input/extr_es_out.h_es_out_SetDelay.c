
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int es_out_t ;


 int ES_OUT_SET_DELAY ;
 int assert (int) ;
 int es_out_Control (int *,int ,int,int ) ;

__attribute__((used)) static inline void es_out_SetDelay( es_out_t *p_out, int i_cat, vlc_tick_t i_delay )
{
    int i_ret = es_out_Control( p_out, ES_OUT_SET_DELAY, i_cat, i_delay );
    assert( !i_ret );
}
