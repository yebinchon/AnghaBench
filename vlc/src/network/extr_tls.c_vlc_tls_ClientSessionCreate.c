
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {struct TYPE_17__* p; } ;
typedef TYPE_2__ vlc_tls_t ;
struct TYPE_18__ {TYPE_1__* ops; } ;
typedef TYPE_3__ vlc_tls_client_t ;
typedef scalar_t__ vlc_tick_t ;
struct pollfd {int events; int fd; } ;
struct TYPE_16__ {int (* handshake ) (TYPE_2__*,char const*,char const*,char**) ;TYPE_2__* (* open ) (TYPE_3__*,TYPE_2__*,char const*,char const* const*) ;} ;


 int MS_FROM_VLC_TICK (scalar_t__) ;
 int POLLIN ;
 int POLLOUT ;
 scalar_t__ VLC_TICK_FROM_MS (int ) ;
 int assert (int) ;
 int cleanup_tls ;
 int msg_Err (TYPE_3__*,char*) ;
 TYPE_2__* stub1 (TYPE_3__*,TYPE_2__*,char const*,char const* const*) ;
 int stub2 (TYPE_2__*,char const*,char const*,char**) ;
 int var_InheritInteger (TYPE_3__*,char*) ;
 int vlc_cleanup_pop () ;
 int vlc_cleanup_push (int ,TYPE_2__*) ;
 scalar_t__ vlc_killed () ;
 int vlc_poll_i11e (struct pollfd*,int,int ) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 scalar_t__ vlc_tick_now () ;
 int vlc_tls_GetPollFD (TYPE_2__*,int *) ;
 int vlc_tls_SessionDelete (TYPE_2__*) ;

vlc_tls_t *vlc_tls_ClientSessionCreate(vlc_tls_client_t *crd, vlc_tls_t *sock,
                                       const char *host, const char *service,
                                       const char *const *alpn, char **alp)
{
    int val;
    int canc = vlc_savecancel();
    vlc_tls_t *session = crd->ops->open(crd, sock, host, alpn);
    vlc_restorecancel(canc);

    if (session == ((void*)0))
        return ((void*)0);

    session->p = sock;

    canc = vlc_savecancel();
    vlc_tick_t deadline = vlc_tick_now ();
    deadline += VLC_TICK_FROM_MS( var_InheritInteger (crd, "ipv4-timeout") );

    vlc_cleanup_push (cleanup_tls, session);
    while ((val = crd->ops->handshake(session, host, service, alp)) != 0)
    {
        struct pollfd ufd[1];

        if (val < 0 || vlc_killed() )
        {
            if (val < 0)
                msg_Err(crd, "TLS session handshake error");
error:
            vlc_tls_SessionDelete (session);
            session = ((void*)0);
            break;
        }

        vlc_tick_t now = vlc_tick_now ();
        if (now > deadline)
           now = deadline;

        assert (val <= 2);

        ufd[0].events = (val == 1) ? POLLIN : POLLOUT;
        ufd[0].fd = vlc_tls_GetPollFD(sock, &ufd->events);

        vlc_restorecancel(canc);
        val = vlc_poll_i11e(ufd, 1, MS_FROM_VLC_TICK(deadline - now));
        canc = vlc_savecancel();
        if (val == 0)
        {
            msg_Err(crd, "TLS session handshake timeout");
            goto error;
        }
    }
    vlc_cleanup_pop();
    vlc_restorecancel(canc);
    return session;
}
