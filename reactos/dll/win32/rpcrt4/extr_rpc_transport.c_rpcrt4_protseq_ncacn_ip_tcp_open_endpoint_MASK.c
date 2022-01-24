#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; int /*<<< orphan*/ * ai_canonname; int /*<<< orphan*/  ai_flags; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  service ;
typedef  int /*<<< orphan*/  sa ;
typedef  int /*<<< orphan*/  host ;
struct TYPE_7__ {TYPE_1__* protseq; int /*<<< orphan*/  protseq_entry; } ;
struct TYPE_6__ {int sock; TYPE_4__ common; } ;
struct TYPE_5__ {int /*<<< orphan*/  cs; int /*<<< orphan*/  listeners; int /*<<< orphan*/  MaxCalls; int /*<<< orphan*/  Protseq; } ;
typedef  TYPE_1__ RpcServerProtseq ;
typedef  TYPE_2__ RpcConnection_tcp ;
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  scalar_t__ RPC_STATUS ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int EAI_NONAME ; 
 int EAI_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int NI_MAXSERV ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 scalar_t__ PF_UNSPEC ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 scalar_t__ RPC_S_CANT_CREATE_ENDPOINT ; 
 scalar_t__ RPC_S_DUPLICATE_ENDPOINT ; 
 scalar_t__ RPC_S_INVALID_ENDPOINT_FORMAT ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ RPC_S_OUT_OF_RESOURCES ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 scalar_t__ WSAEADDRINUSE ; 
 int FUNC8 () ; 
 int FUNC9 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct addrinfo*) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int /*<<< orphan*/ *,char const*,struct addrinfo*,struct addrinfo**) ; 
 int FUNC14 (struct sockaddr*,int,char*,int,char*,int,int) ; 
 scalar_t__ FUNC15 (int,struct sockaddr*,int*) ; 
 int FUNC16 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rpc ; 
 int FUNC19 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RPC_STATUS FUNC20(RpcServerProtseq *protseq, const char *endpoint)
{
    RPC_STATUS status = RPC_S_CANT_CREATE_ENDPOINT;
    int sock;
    int ret;
    struct addrinfo *ai;
    struct addrinfo *ai_cur;
    struct addrinfo hints;

    FUNC5("(%p, %s)\n", protseq, endpoint);

    hints.ai_flags          = AI_PASSIVE /* for non-localhost addresses */;
    hints.ai_family         = PF_UNSPEC;
    hints.ai_socktype       = SOCK_STREAM;
    hints.ai_protocol       = IPPROTO_TCP;
    hints.ai_addrlen        = 0;
    hints.ai_addr           = NULL;
    hints.ai_canonname      = NULL;
    hints.ai_next           = NULL;

    ret = FUNC13(NULL, endpoint ? endpoint : "0", &hints, &ai);
    if (ret)
    {
        FUNC0("getaddrinfo for port %s failed: %s\n", endpoint,
            FUNC12(ret));
        if ((ret == EAI_SERVICE) || (ret == EAI_NONAME))
            return RPC_S_INVALID_ENDPOINT_FORMAT;
        return RPC_S_CANT_CREATE_ENDPOINT;
    }

    for (ai_cur = ai; ai_cur; ai_cur = ai_cur->ai_next)
    {
        RpcConnection_tcp *tcpc;
        RPC_STATUS create_status;
        struct sockaddr_storage sa;
        socklen_t sa_len;
        char service[NI_MAXSERV];
        u_long nonblocking;

        if (ai_cur->ai_family != AF_INET && ai_cur->ai_family != AF_INET6)
        {
            FUNC5("skipping non-IP/IPv6 address family\n");
            continue;
        }

        if (FUNC6(rpc))
        {
            char host[256];
            FUNC14(ai_cur->ai_addr, ai_cur->ai_addrlen,
                        host, sizeof(host), service, sizeof(service),
                        NI_NUMERICHOST | NI_NUMERICSERV);
            FUNC5("trying %s:%s\n", host, service);
        }

        sock = FUNC19(ai_cur->ai_family, ai_cur->ai_socktype, ai_cur->ai_protocol);
        if (sock == -1)
        {
            FUNC7("socket() failed: %u\n", FUNC8());
            status = RPC_S_CANT_CREATE_ENDPOINT;
            continue;
        }

        ret = FUNC9(sock, ai_cur->ai_addr, ai_cur->ai_addrlen);
        if (ret < 0)
        {
            FUNC7("bind failed: %u\n", FUNC8());
            FUNC10(sock);
            if (FUNC8() == WSAEADDRINUSE)
              status = RPC_S_DUPLICATE_ENDPOINT;
            else
              status = RPC_S_CANT_CREATE_ENDPOINT;
            continue;
        }

        sa_len = sizeof(sa);
        if (FUNC15(sock, (struct sockaddr *)&sa, &sa_len))
        {
            FUNC7("getsockname() failed: %u\n", FUNC8());
            FUNC10(sock);
            status = RPC_S_CANT_CREATE_ENDPOINT;
            continue;
        }

        ret = FUNC14((struct sockaddr *)&sa, sa_len,
                          NULL, 0, service, sizeof(service),
                          NI_NUMERICSERV);
        if (ret)
        {
            FUNC7("getnameinfo failed: %s\n", FUNC12(ret));
            FUNC10(sock);
            status = RPC_S_CANT_CREATE_ENDPOINT;
            continue;
        }

        create_status = FUNC3((RpcConnection **)&tcpc, TRUE,
                                                protseq->Protseq, NULL,
                                                service, NULL, NULL, NULL, NULL);
        if (create_status != RPC_S_OK)
        {
            FUNC10(sock);
            status = create_status;
            continue;
        }

        tcpc->sock = sock;
        ret = FUNC18(sock, protseq->MaxCalls);
        if (ret < 0)
        {
            FUNC7("listen failed: %u\n", FUNC8());
            FUNC4(&tcpc->common);
            status = RPC_S_OUT_OF_RESOURCES;
            continue;
        }
        /* need a non-blocking socket, otherwise accept() has a potential
         * race-condition (poll() says it is readable, connection drops,
         * and accept() blocks until the next connection comes...)
         */
        nonblocking = 1;
        ret = FUNC16(sock, FIONBIO, &nonblocking);
        if (ret < 0)
        {
            FUNC7("couldn't make socket non-blocking, error %d\n", ret);
            FUNC4(&tcpc->common);
            status = RPC_S_OUT_OF_RESOURCES;
            continue;
        }

        FUNC1(&protseq->cs);
        FUNC17(&protseq->listeners, &tcpc->common.protseq_entry);
        tcpc->common.protseq = protseq;
        FUNC2(&protseq->cs);

        FUNC11(ai);

        /* since IPv4 and IPv6 share the same port space, we only need one
         * successful bind to listen for both */
        FUNC5("listening on %s\n", endpoint);
        return RPC_S_OK;
    }

    FUNC11(ai);
    FUNC0("couldn't listen on port %s\n", endpoint);
    return status;
}