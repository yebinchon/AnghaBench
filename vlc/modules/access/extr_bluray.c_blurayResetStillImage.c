
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_6__ {scalar_t__ i_still_end_time; } ;
typedef TYPE_2__ demux_sys_t ;


 int ES_OUT_RESET_PCR ;
 scalar_t__ STILL_IMAGE_NOT_SET ;
 int blurayRestartParser (TYPE_1__*,int,int) ;
 int es_out_Control (int ,int ) ;

__attribute__((used)) static void blurayResetStillImage( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    if (p_sys->i_still_end_time != STILL_IMAGE_NOT_SET) {
        p_sys->i_still_end_time = STILL_IMAGE_NOT_SET;

        blurayRestartParser(p_demux, 0, 0);
        es_out_Control( p_demux->out, ES_OUT_RESET_PCR );
    }
}
