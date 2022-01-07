
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {TYPE_2__* p_sys; int pf_control; int * pf_demux; int psz_location; int psz_name; int * out; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {int fd; int rtcp_fd; int thread_ready; int autodetect; int thread; int * srtp; int * session; void* max_misorder; void* max_dropout; int timeout; void* max_src; int * chained_demux; } ;
typedef TYPE_2__ demux_sys_t ;


 int Close (int *) ;
 int Control ;




 int SOCK_DCCP ;
 int SOCK_STREAM ;
 int SRTP_AUTH_HMAC_SHA1 ;
 int SRTP_ENCR_AES_CM ;
 int SRTP_PRF_AES_CM ;
 int SRTP_RCC_MODE1 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_THREAD_PRIORITY_INPUT ;
 int VLC_VAR_STRING ;
 int extract_port (char**) ;
 int free (char*) ;
 TYPE_2__* malloc (int) ;
 int msg_Err (int *,char*,...) ;
 int net_Close (int) ;
 int net_Connect (int *,char*,int,int ,int) ;
 int net_OpenDgram (int *,char*,int,char*,int,int) ;
 int net_SetCSCov (int,int,int) ;
 int rtp_dgram_thread ;
 int * rtp_session_create (TYPE_1__*) ;
 int rtp_stream_thread ;
 int * srtp_create (int ,int ,int,int ,int ) ;
 int srtp_setkeystring (int *,char*,char*) ;
 int strcasecmp (int ,char*) ;
 char* strchr (char*,char) ;
 char* strdup (int ) ;
 int var_Create (int *,char*,int ) ;
 void* var_CreateGetInteger (int *,char*) ;
 char* var_CreateGetNonEmptyString (TYPE_1__*,char*) ;
 int var_SetString (int *,char*,char*) ;
 scalar_t__ vlc_clone (int *,int ,TYPE_1__*,int ) ;
 int vlc_gcrypt_init () ;
 int vlc_strerror_c (int) ;
 int vlc_tick_from_sec (void*) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    demux_t *demux = (demux_t *)obj;
    int tp;

    if (demux->out == ((void*)0))
        return VLC_EGENERIC;

    if (!strcasecmp(demux->psz_name, "dccp"))
        tp = 131;
    else
    if (!strcasecmp(demux->psz_name, "rtptcp"))
        tp = 130;
    else
    if (!strcasecmp(demux->psz_name, "rtp"))
        tp = 129;
    else
    if (!strcasecmp(demux->psz_name, "udplite"))
        tp = 128;
    else
        return VLC_EGENERIC;

    char *tmp = strdup (demux->psz_location);
    if (tmp == ((void*)0))
        return VLC_ENOMEM;

    char *shost;
    char *dhost = strchr (tmp, '@');
    if (dhost != ((void*)0))
    {
        *(dhost++) = '\0';
        shost = tmp;
    }
    else
    {
        dhost = tmp;
        shost = ((void*)0);
    }


    int sport = 0, dport = 0;
    if (shost != ((void*)0))
        sport = extract_port (&shost);
    if (dhost != ((void*)0))
        dport = extract_port (&dhost);
    if (dport == 0)
        dport = 5004;

    int rtcp_dport = var_CreateGetInteger (obj, "rtcp-port");


    int fd = -1, rtcp_fd = -1;

    switch (tp)
    {
        case 129:
        case 128:
            fd = net_OpenDgram (obj, dhost, dport, shost, sport, tp);
            if (fd == -1)
                break;
            if (rtcp_dport > 0)
                rtcp_fd = net_OpenDgram (obj, dhost, rtcp_dport, shost, 0, tp);
            break;

         case 131:






            var_Create (obj, "dccp-service", VLC_VAR_STRING);
            var_SetString (obj, "dccp-service", "RTPV");
            fd = net_Connect (obj, dhost, dport, 6, tp);



            break;

        case 130:
            fd = net_Connect (obj, dhost, dport, SOCK_STREAM, tp);
            break;
    }

    free (tmp);
    if (fd == -1)
        return VLC_EGENERIC;
    net_SetCSCov (fd, -1, 12);


    demux_sys_t *p_sys = malloc (sizeof (*p_sys));
    if (p_sys == ((void*)0))
    {
        net_Close (fd);
        if (rtcp_fd != -1)
            net_Close (rtcp_fd);
        return VLC_EGENERIC;
    }

    p_sys->chained_demux = ((void*)0);



    p_sys->fd = fd;
    p_sys->rtcp_fd = rtcp_fd;
    p_sys->max_src = var_CreateGetInteger (obj, "rtp-max-src");
    p_sys->timeout = vlc_tick_from_sec( var_CreateGetInteger (obj, "rtp-timeout") );
    p_sys->max_dropout = var_CreateGetInteger (obj, "rtp-max-dropout");
    p_sys->max_misorder = var_CreateGetInteger (obj, "rtp-max-misorder");
    p_sys->thread_ready = 0;
    p_sys->autodetect = 1;

    demux->pf_demux = ((void*)0);
    demux->pf_control = Control;
    demux->p_sys = p_sys;

    p_sys->session = rtp_session_create (demux);
    if (p_sys->session == ((void*)0))
        goto error;
    if (vlc_clone (&p_sys->thread,
                   (tp != 130) ? rtp_dgram_thread : rtp_stream_thread,
                   demux, VLC_THREAD_PRIORITY_INPUT))
        goto error;
    p_sys->thread_ready = 1;
    return VLC_SUCCESS;

error:
    Close (obj);
    return VLC_EGENERIC;
}
