
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tick_t ;
typedef int input_thread_t ;
struct TYPE_7__ {int i_slave; int p_es_out; TYPE_1__** slave; TYPE_2__* master; } ;
typedef TYPE_3__ input_thread_private_t ;
struct TYPE_6__ {int i_pts_delay; } ;
struct TYPE_5__ {int i_pts_delay; } ;


 int DEFAULT_PTS_DELAY ;
 int __MAX (int,int ) ;
 int es_out_SetJitter (int ,int,int ,int const) ;
 TYPE_3__* input_priv (int *) ;
 int var_GetInteger (int *,char*) ;

__attribute__((used)) static void UpdatePtsDelay( input_thread_t *p_input )
{
    input_thread_private_t *p_sys = input_priv(p_input);


    vlc_tick_t i_pts_delay = p_sys->master->i_pts_delay;
    for( int i = 0; i < p_sys->i_slave; i++ )
        i_pts_delay = __MAX( i_pts_delay, p_sys->slave[i]->i_pts_delay );

    if( i_pts_delay < 0 )
        i_pts_delay = 0;


    const int i_cr_average = var_GetInteger( p_input, "cr-average" ) * i_pts_delay / DEFAULT_PTS_DELAY;

    es_out_SetJitter( input_priv(p_input)->p_es_out, i_pts_delay, 0, i_cr_average );
}
