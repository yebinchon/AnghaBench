
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int i_es; int rtsp; TYPE_3__** es; int * psz_mux; } ;
typedef TYPE_1__ vod_media_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int sout_stream_id_sys_t ;
struct TYPE_9__ {int fmtp; } ;
typedef TYPE_2__ rtp_format_t ;
struct TYPE_11__ {int * fmtp; } ;
struct TYPE_10__ {int es_id; int rtsp_id; TYPE_7__ rtp_fmt; } ;
typedef TYPE_3__ media_es_t ;


 int RtspTrackAttach (int ,char const*,int ,int *,int *,int *) ;
 int VLC_EGENERIC ;
 int assert (int) ;
 int memcpy (TYPE_2__*,TYPE_7__*,int) ;
 int strdup (int *) ;

int vod_init_id(vod_media_t *p_media, const char *psz_session, int es_id,
                sout_stream_id_sys_t *sout_id, rtp_format_t *rtp_fmt,
                uint32_t *ssrc, uint16_t *seq_init)
{
    media_es_t *p_es;

    if (p_media->psz_mux != ((void*)0))
    {
        assert(p_media->i_es == 1);
        p_es = p_media->es[0];
    }
    else
    {
        p_es = ((void*)0);

        for (int i = 0; i < p_media->i_es; i++)
        {
            if (p_media->es[i]->es_id == es_id)
            {
                p_es = p_media->es[i];
                break;
            }
        }
        if (p_es == ((void*)0))
            return VLC_EGENERIC;
    }

    memcpy(rtp_fmt, &p_es->rtp_fmt, sizeof(*rtp_fmt));
    if (p_es->rtp_fmt.fmtp != ((void*)0))
        rtp_fmt->fmtp = strdup(p_es->rtp_fmt.fmtp);

    return RtspTrackAttach(p_media->rtsp, psz_session, p_es->rtsp_id,
                           sout_id, ssrc, seq_init);
}
