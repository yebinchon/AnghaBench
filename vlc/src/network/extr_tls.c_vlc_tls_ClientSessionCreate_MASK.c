#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {struct TYPE_17__* p; } ;
typedef  TYPE_2__ vlc_tls_t ;
struct TYPE_18__ {TYPE_1__* ops; } ;
typedef  TYPE_3__ vlc_tls_client_t ;
typedef  scalar_t__ vlc_tick_t ;
struct pollfd {int /*<<< orphan*/  events; int /*<<< orphan*/  fd; } ;
struct TYPE_16__ {int (* handshake ) (TYPE_2__*,char const*,char const*,char**) ;TYPE_2__* (* open ) (TYPE_3__*,TYPE_2__*,char const*,char const* const*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  POLLOUT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  cleanup_tls ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,TYPE_2__*,char const*,char const* const*) ; 
 int FUNC5 (TYPE_2__*,char const*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 () ; 
 int FUNC10 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 

vlc_tls_t *FUNC16(vlc_tls_client_t *crd, vlc_tls_t *sock,
                                       const char *host, const char *service,
                                       const char *const *alpn, char **alp)
{
    int val;
    int canc = FUNC12();
    vlc_tls_t *session = crd->ops->open(crd, sock, host, alpn);
    FUNC11(canc);

    if (session == NULL)
        return NULL;

    session->p = sock;

    canc = FUNC12();
    vlc_tick_t deadline = FUNC13 ();
    deadline += FUNC1( FUNC6 (crd, "ipv4-timeout") );

    FUNC8 (cleanup_tls, session);
    while ((val = crd->ops->handshake(session, host, service, alp)) != 0)
    {
        struct pollfd ufd[1];

        if (val < 0 || FUNC9() )
        {
            if (val < 0)
                FUNC3(crd, "TLS session handshake error");
error:
            FUNC15 (session);
            session = NULL;
            break;
        }

        vlc_tick_t now = FUNC13 ();
        if (now > deadline)
           now = deadline;

        FUNC2 (val <= 2);

        ufd[0].events = (val == 1) ? POLLIN : POLLOUT;
        ufd[0].fd = FUNC14(sock, &ufd->events);

        FUNC11(canc);
        val = FUNC10(ufd, 1, FUNC0(deadline - now));
        canc = FUNC12();
        if (val == 0)
        {
            FUNC3(crd, "TLS session handshake timeout");
            goto error;
        }
    }
    FUNC7();
    FUNC11(canc);
    return session;
}