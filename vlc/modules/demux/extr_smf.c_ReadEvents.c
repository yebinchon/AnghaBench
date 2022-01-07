
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_9__ {scalar_t__ next; } ;
typedef TYPE_1__ mtrk_t ;
typedef int es_out_t ;
struct TYPE_10__ {int s; TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_11__ {unsigned int trackc; int pts; TYPE_1__* trackv; } ;
typedef TYPE_3__ demux_sys_t ;


 scalar_t__ HandleMessage (TYPE_2__*,TYPE_1__*,int *) ;
 scalar_t__ ReadDeltaTime (int ,TYPE_1__*) ;
 scalar_t__ UINT64_MAX ;
 int date_Increment (int *,scalar_t__) ;
 int msg_Err (TYPE_2__*,char*) ;

__attribute__((used)) static int ReadEvents (demux_t *demux, uint64_t *restrict pulse,
                       es_out_t *out)
{
    uint64_t cur_pulse = *pulse, next_pulse = UINT64_MAX;
    demux_sys_t *sys = demux->p_sys;

    for (unsigned i = 0; i < sys->trackc; i++)
    {
        mtrk_t *track = sys->trackv + i;

        while (track->next <= cur_pulse)
        {
            if (HandleMessage (demux, track, out)
             || ReadDeltaTime (demux->s, track))
            {
                msg_Err (demux, "fatal parsing error");
                return -1;
            }
        }

        if (next_pulse > track->next)
            next_pulse = track->next;
    }

    if (next_pulse != UINT64_MAX)
        date_Increment (&sys->pts, next_pulse - cur_pulse);
    *pulse = next_pulse;
    return 0;
}
