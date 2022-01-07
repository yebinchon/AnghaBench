
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_3__ {double position; scalar_t__ time; scalar_t__ length; } ;
struct TYPE_4__ {int lock; TYPE_1__ stats; int reader; int out; int name; } ;
typedef TYPE_2__ vlc_demux_chained_t ;
typedef int demux_t ;


 int DEMUX_GET_LENGTH ;
 int DEMUX_GET_POSITION ;
 int DEMUX_GET_TIME ;
 int DEMUX_SET_GROUP_ALL ;
 int UINT_MAX ;
 int VLC_OBJECT (int ) ;
 scalar_t__ VLC_TICK_FROM_MS (int) ;
 scalar_t__ demux_Control (int *,int ,...) ;
 int demux_Delete (int *) ;
 scalar_t__ demux_Demux (int *) ;
 int * demux_New (int ,int ,int ,int ) ;
 scalar_t__ demux_TestAndClearFlags (int *,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_stream_Delete (int ) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void *vlc_demux_chained_Thread(void *data)
{
    vlc_demux_chained_t *dc = data;
    demux_t *demux = demux_New(VLC_OBJECT(dc->reader), dc->name, dc->reader,
                               dc->out);
    if (demux == ((void*)0))
    {
        vlc_stream_Delete(dc->reader);
        return ((void*)0);
    }



    demux_Control(demux, DEMUX_SET_GROUP_ALL);


    vlc_tick_t next_update = 0;

    do
        if (demux_TestAndClearFlags(demux, UINT_MAX) || vlc_tick_now() >= next_update)
        {
            double newpos;
            vlc_tick_t newlen;
            vlc_tick_t newtime;

            if (demux_Control(demux, DEMUX_GET_POSITION, &newpos))
                newpos = 0.;
            if (demux_Control(demux, DEMUX_GET_LENGTH, &newlen))
                newlen = 0;
            if (demux_Control(demux, DEMUX_GET_TIME, &newtime))
                newtime = 0;

            vlc_mutex_lock(&dc->lock);
            dc->stats.position = newpos;
            dc->stats.length = newlen;
            dc->stats.time = newtime;
            vlc_mutex_unlock(&dc->lock);

            next_update = vlc_tick_now() + VLC_TICK_FROM_MS(250);
        }
    while (demux_Demux(demux) > 0);

    demux_Delete(demux);
    return ((void*)0);
}
