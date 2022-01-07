
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* p; } ;
typedef TYPE_3__ vout_thread_t ;
struct TYPE_7__ {int is_interlaced; scalar_t__ date; } ;
struct TYPE_8__ {TYPE_1__ interlacing; } ;


 scalar_t__ VLC_TICK_FROM_SEC (int) ;
 int msg_Dbg (TYPE_3__*,char*,char*) ;
 int var_SetBool (TYPE_3__*,char*,int) ;
 scalar_t__ vlc_tick_now () ;

void vout_SetInterlacingState(vout_thread_t *vout, bool is_interlaced)
{

    const int interlacing_change = (!!is_interlaced)
                                 - (!!vout->p->interlacing.is_interlaced);
    if (interlacing_change == 1 ||
        (interlacing_change == -1 &&
        vout->p->interlacing.date + VLC_TICK_FROM_SEC(30) < vlc_tick_now()))
    {
        msg_Dbg(vout, "Detected %s video",
                 is_interlaced ? "interlaced" : "progressive");
        var_SetBool(vout, "deinterlace-needed", is_interlaced);
        vout->p->interlacing.is_interlaced = is_interlaced;
    }
    if (is_interlaced)
        vout->p->interlacing.date = vlc_tick_now();
}
