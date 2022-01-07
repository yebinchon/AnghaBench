
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_13__ {int jitter; scalar_t__ last_seq; TYPE_4__* blocks; } ;
typedef TYPE_1__ rtp_source_t ;
struct TYPE_14__ {unsigned int srcc; TYPE_1__** srcv; } ;
typedef TYPE_2__ rtp_session_t ;
struct TYPE_15__ {int frequency; } ;
typedef TYPE_3__ rtp_pt_t ;
typedef scalar_t__ int16_t ;
typedef int demux_t ;
struct TYPE_16__ {scalar_t__ i_pts; } ;
typedef TYPE_4__ block_t ;


 scalar_t__ INT64_MAX ;
 scalar_t__ VLC_TICK_FROM_MS (int) ;
 int rtp_decode (int *,TYPE_2__ const*,TYPE_1__*) ;
 TYPE_3__* rtp_find_ptype (TYPE_2__ const*,TYPE_1__*,TYPE_4__*,int *) ;
 scalar_t__ rtp_seq (TYPE_4__*) ;
 scalar_t__ vlc_tick_from_samples (int,int ) ;
 scalar_t__ vlc_tick_now () ;

bool rtp_dequeue (demux_t *demux, const rtp_session_t *session,
                  vlc_tick_t *restrict deadlinep)
{
    vlc_tick_t now = vlc_tick_now ();
    bool pending = 0;

    *deadlinep = INT64_MAX;

    for (unsigned i = 0, max = session->srcc; i < max; i++)
    {
        rtp_source_t *src = session->srcv[i];
        block_t *block;
        while (((block = src->blocks)) != ((void*)0))
        {
            if ((int16_t)(rtp_seq (block) - (src->last_seq + 1)) <= 0)
            {
                rtp_decode (demux, session, src);
                continue;
            }




            vlc_tick_t deadline;
            const rtp_pt_t *pt = rtp_find_ptype (session, src, block, ((void*)0));
            if (pt)
                deadline = vlc_tick_from_samples(3 * src->jitter, pt->frequency);
            else
                deadline = 0;


            if (deadline < VLC_TICK_FROM_MS(25))
                deadline = VLC_TICK_FROM_MS(25);






            deadline += block->i_pts;
            if (now >= deadline)
            {
                rtp_decode (demux, session, src);
                continue;
            }
            if (*deadlinep > deadline)
                *deadlinep = deadline;
            pending = 1;
            break;
        }
    }
    return pending;
}
