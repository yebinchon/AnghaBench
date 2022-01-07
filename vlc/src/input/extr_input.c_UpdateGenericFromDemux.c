
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_thread_t ;
typedef int demux_t ;
struct TYPE_4__ {TYPE_1__* master; } ;
struct TYPE_3__ {int * p_demux; } ;


 int DEMUX_GET_SIGNAL ;
 int INPUT_UPDATE_META ;
 int InputUpdateMeta (int *,int *) ;
 int demux_Control (int *,int ,double*,double*) ;
 scalar_t__ demux_TestAndClearFlags (int *,int ) ;
 int input_SendEventSignal (int *,double,double) ;
 TYPE_2__* input_priv (int *) ;

__attribute__((used)) static void UpdateGenericFromDemux( input_thread_t *p_input )
{
    demux_t *p_demux = input_priv(p_input)->master->p_demux;

    if( demux_TestAndClearFlags( p_demux, INPUT_UPDATE_META ) )
        InputUpdateMeta( p_input, p_demux );

    {
        double quality;
        double strength;

        if( !demux_Control( p_demux, DEMUX_GET_SIGNAL, &quality, &strength ) )
            input_SendEventSignal( p_input, quality, strength );
    }
}
