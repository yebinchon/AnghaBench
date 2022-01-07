
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_9__ {int lock; } ;
typedef TYPE_1__ rtsp_stream_t ;
typedef int rtsp_stream_id_t ;
struct TYPE_10__ {int rtp_fd; int setup_fd; scalar_t__ seq_init; scalar_t__ ssrc; int * sout_id; int * id; } ;
typedef TYPE_2__ rtsp_strack_t ;
struct TYPE_11__ {int trackc; TYPE_2__* trackv; } ;
typedef TYPE_3__ rtsp_session_t ;


 TYPE_3__* RtspClientGet (TYPE_1__*,char const*) ;
 int TAB_APPEND (int,TYPE_2__*,TYPE_2__) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int assert (int) ;
 int dup_socket (int) ;
 int ntohl (scalar_t__) ;
 int rtp_add_sink (int *,int,int,scalar_t__*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_rand_bytes (scalar_t__*,int) ;

int RtspTrackAttach( rtsp_stream_t *rtsp, const char *name,
                     rtsp_stream_id_t *id, sout_stream_id_sys_t *sout_id,
                     uint32_t *ssrc, uint16_t *seq_init )
{
    int val = VLC_EGENERIC;
    rtsp_session_t *session;

    vlc_mutex_lock(&rtsp->lock);
    session = RtspClientGet(rtsp, name);

    if (session == ((void*)0))
        goto out;

    rtsp_strack_t *tr = ((void*)0);
    for (int i = 0; i < session->trackc; i++)
    {
        if (session->trackv[i].id == id)
        {
            tr = session->trackv + i;
            break;
        }
    }

    if (tr != ((void*)0))
    {
        tr->sout_id = sout_id;
        tr->rtp_fd = dup_socket(tr->setup_fd);
    }
    else
    {


        rtsp_strack_t track = { .id = id, .sout_id = sout_id,
                                .setup_fd = -1, .rtp_fd = -1 };
        vlc_rand_bytes (&track.seq_init, sizeof (track.seq_init));
        vlc_rand_bytes (&track.ssrc, sizeof (track.ssrc));

        TAB_APPEND(session->trackc, session->trackv, track);
        tr = session->trackv + session->trackc - 1;
    }

    *ssrc = ntohl(tr->ssrc);
    *seq_init = tr->seq_init;

    if (tr->rtp_fd != -1)
    {
        uint16_t seq;
        rtp_add_sink(tr->sout_id, tr->rtp_fd, 0, &seq);



        assert(tr->seq_init == seq);
    }

    val = VLC_SUCCESS;
out:
    vlc_mutex_unlock(&rtsp->lock);
    return val;
}
