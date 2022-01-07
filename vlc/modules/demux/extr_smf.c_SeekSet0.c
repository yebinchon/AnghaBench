
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_7__ {int running_event; int start; scalar_t__ next; scalar_t__ offset; } ;
typedef TYPE_1__ mtrk_t ;
struct TYPE_8__ {TYPE_3__* p_sys; int * s; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_9__ {int ppqn; unsigned int trackc; TYPE_1__* trackv; int tick; scalar_t__ pulse; int pts; } ;
typedef TYPE_3__ demux_sys_t ;


 scalar_t__ ReadDeltaTime (int *,TYPE_1__*) ;
 int VLC_TICK_0 ;
 int date_Init (int *,int,int) ;
 int date_Set (int *,int ) ;
 int msg_Err (TYPE_2__*,char*) ;
 scalar_t__ vlc_stream_Seek (int *,int ) ;

__attribute__((used)) static int SeekSet0 (demux_t *demux)
{
    stream_t *stream = demux->s;
    demux_sys_t *sys = demux->p_sys;


    date_Init (&sys->pts, sys->ppqn * 2, 1);
    date_Set (&sys->pts, VLC_TICK_0);
    sys->pulse = 0;
    sys->tick = VLC_TICK_0;

    for (unsigned i = 0; i < sys->trackc; i++)
    {
        mtrk_t *tr = sys->trackv + i;

        tr->offset = 0;
        tr->next = 0;



        tr->running_event = 0xF6;

        if (vlc_stream_Seek (stream, tr->start)
         || ReadDeltaTime (stream, tr))
        {
            msg_Err (demux, "fatal parsing error");
            return -1;
        }
    }

    return 0;
}
