
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int out; TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {scalar_t__ i_still_end_time; int bluray; } ;
typedef TYPE_2__ demux_sys_t ;


 int ES_OUT_GET_EMPTY ;
 scalar_t__ STILL_IMAGE_INFINITE ;
 scalar_t__ STILL_IMAGE_NOT_SET ;
 int VLC_TICK_FROM_MS (int) ;
 int bd_read_skip_still (int ) ;
 int blurayResetStillImage (TYPE_1__*) ;
 int es_out_Control (int ,int ,int*) ;
 int msg_Dbg (TYPE_1__*,char*,...) ;
 int streamFlush (TYPE_2__*) ;
 scalar_t__ vlc_tick_from_sec (unsigned int) ;
 scalar_t__ vlc_tick_now () ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static void blurayStillImage( demux_t *p_demux, unsigned i_timeout )
{
    demux_sys_t *p_sys = p_demux->p_sys;


    if (p_sys->i_still_end_time != STILL_IMAGE_NOT_SET &&
        p_sys->i_still_end_time != STILL_IMAGE_INFINITE &&
        p_sys->i_still_end_time <= vlc_tick_now()) {
        msg_Dbg(p_demux, "Still image end");
        bd_read_skip_still(p_sys->bluray);

        blurayResetStillImage(p_demux);
        return;
    }


    if (p_sys->i_still_end_time == STILL_IMAGE_NOT_SET) {
        if (i_timeout) {
            msg_Dbg(p_demux, "Still image (%d seconds)", i_timeout);
            p_sys->i_still_end_time = vlc_tick_now() + vlc_tick_from_sec( i_timeout );
        } else {
            msg_Dbg(p_demux, "Still image (infinite)");
            p_sys->i_still_end_time = STILL_IMAGE_INFINITE;
        }


        streamFlush(p_sys);


        bool b_empty;
        es_out_Control( p_demux->out, ES_OUT_GET_EMPTY, &b_empty );
    }


    vlc_tick_sleep( VLC_TICK_FROM_MS(40) );
}
