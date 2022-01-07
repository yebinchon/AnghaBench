
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sout_stream_id_sys_t ;
struct TYPE_8__ {int lock; } ;
typedef TYPE_1__ rtsp_stream_t ;
struct TYPE_9__ {int setup_fd; int rtp_fd; int * sout_id; } ;
typedef TYPE_2__ rtsp_strack_t ;
struct TYPE_10__ {int trackc; TYPE_2__* trackv; } ;
typedef TYPE_3__ rtsp_session_t ;


 TYPE_3__* RtspClientGet (TYPE_1__*,char const*) ;
 int TAB_ERASE (int,TYPE_2__*,int) ;
 int rtp_del_sink (int *,int) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void RtspTrackDetach( rtsp_stream_t *rtsp, const char *name,
                      sout_stream_id_sys_t *sout_id )
{
    rtsp_session_t *session;

    vlc_mutex_lock(&rtsp->lock);
    session = RtspClientGet(rtsp, name);

    if (session == ((void*)0))
        goto out;

    for (int i = 0; i < session->trackc; i++)
    {
        rtsp_strack_t *tr = session->trackv + i;
        if (tr->sout_id == sout_id)
        {
            if (tr->setup_fd == -1)
            {



                TAB_ERASE(session->trackc, session->trackv, i);
                break;
            }

            if (tr->rtp_fd != -1)
            {
                rtp_del_sink(tr->sout_id, tr->rtp_fd);
                tr->rtp_fd = -1;
            }
            tr->sout_id = ((void*)0);
            break;
        }
    }

out:
    vlc_mutex_unlock(&rtsp->lock);
}
