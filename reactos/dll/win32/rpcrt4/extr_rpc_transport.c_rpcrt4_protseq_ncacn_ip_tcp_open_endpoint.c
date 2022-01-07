
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; struct sockaddr* ai_addr; int ai_protocol; int ai_socktype; struct addrinfo* ai_next; int * ai_canonname; int ai_flags; } ;
typedef int socklen_t ;
typedef int service ;
typedef int sa ;
typedef int host ;
struct TYPE_7__ {TYPE_1__* protseq; int protseq_entry; } ;
struct TYPE_6__ {int sock; TYPE_4__ common; } ;
struct TYPE_5__ {int cs; int listeners; int MaxCalls; int Protseq; } ;
typedef TYPE_1__ RpcServerProtseq ;
typedef TYPE_2__ RpcConnection_tcp ;
typedef int RpcConnection ;
typedef scalar_t__ RPC_STATUS ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int AI_PASSIVE ;
 int EAI_NONAME ;
 int EAI_SERVICE ;
 int ERR (char*,char const*,...) ;
 int EnterCriticalSection (int *) ;
 int FIONBIO ;
 int IPPROTO_TCP ;
 int LeaveCriticalSection (int *) ;
 int NI_MAXSERV ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 scalar_t__ PF_UNSPEC ;
 scalar_t__ RPCRT4_CreateConnection (int **,int ,int ,int *,char*,int *,int *,int *,int *) ;
 int RPCRT4_ReleaseConnection (TYPE_4__*) ;
 scalar_t__ RPC_S_CANT_CREATE_ENDPOINT ;
 scalar_t__ RPC_S_DUPLICATE_ENDPOINT ;
 scalar_t__ RPC_S_INVALID_ENDPOINT_FORMAT ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_S_OUT_OF_RESOURCES ;
 int SOCK_STREAM ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int TRUE ;
 int WARN (char*,int) ;
 scalar_t__ WSAEADDRINUSE ;
 int WSAGetLastError () ;
 int bind (int,struct sockaddr*,int) ;
 int closesocket (int) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int *,char const*,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (struct sockaddr*,int,char*,int,char*,int,int) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int ioctlsocket (int,int ,int*) ;
 int list_add_tail (int *,int *) ;
 int listen (int,int ) ;
 int rpc ;
 int socket (scalar_t__,int ,int ) ;

__attribute__((used)) static RPC_STATUS rpcrt4_protseq_ncacn_ip_tcp_open_endpoint(RpcServerProtseq *protseq, const char *endpoint)
{
    RPC_STATUS status = RPC_S_CANT_CREATE_ENDPOINT;
    int sock;
    int ret;
    struct addrinfo *ai;
    struct addrinfo *ai_cur;
    struct addrinfo hints;

    TRACE("(%p, %s)\n", protseq, endpoint);

    hints.ai_flags = AI_PASSIVE ;
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_addrlen = 0;
    hints.ai_addr = ((void*)0);
    hints.ai_canonname = ((void*)0);
    hints.ai_next = ((void*)0);

    ret = getaddrinfo(((void*)0), endpoint ? endpoint : "0", &hints, &ai);
    if (ret)
    {
        ERR("getaddrinfo for port %s failed: %s\n", endpoint,
            gai_strerror(ret));
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
            TRACE("skipping non-IP/IPv6 address family\n");
            continue;
        }

        if (TRACE_ON(rpc))
        {
            char host[256];
            getnameinfo(ai_cur->ai_addr, ai_cur->ai_addrlen,
                        host, sizeof(host), service, sizeof(service),
                        NI_NUMERICHOST | NI_NUMERICSERV);
            TRACE("trying %s:%s\n", host, service);
        }

        sock = socket(ai_cur->ai_family, ai_cur->ai_socktype, ai_cur->ai_protocol);
        if (sock == -1)
        {
            WARN("socket() failed: %u\n", WSAGetLastError());
            status = RPC_S_CANT_CREATE_ENDPOINT;
            continue;
        }

        ret = bind(sock, ai_cur->ai_addr, ai_cur->ai_addrlen);
        if (ret < 0)
        {
            WARN("bind failed: %u\n", WSAGetLastError());
            closesocket(sock);
            if (WSAGetLastError() == WSAEADDRINUSE)
              status = RPC_S_DUPLICATE_ENDPOINT;
            else
              status = RPC_S_CANT_CREATE_ENDPOINT;
            continue;
        }

        sa_len = sizeof(sa);
        if (getsockname(sock, (struct sockaddr *)&sa, &sa_len))
        {
            WARN("getsockname() failed: %u\n", WSAGetLastError());
            closesocket(sock);
            status = RPC_S_CANT_CREATE_ENDPOINT;
            continue;
        }

        ret = getnameinfo((struct sockaddr *)&sa, sa_len,
                          ((void*)0), 0, service, sizeof(service),
                          NI_NUMERICSERV);
        if (ret)
        {
            WARN("getnameinfo failed: %s\n", gai_strerror(ret));
            closesocket(sock);
            status = RPC_S_CANT_CREATE_ENDPOINT;
            continue;
        }

        create_status = RPCRT4_CreateConnection((RpcConnection **)&tcpc, TRUE,
                                                protseq->Protseq, ((void*)0),
                                                service, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if (create_status != RPC_S_OK)
        {
            closesocket(sock);
            status = create_status;
            continue;
        }

        tcpc->sock = sock;
        ret = listen(sock, protseq->MaxCalls);
        if (ret < 0)
        {
            WARN("listen failed: %u\n", WSAGetLastError());
            RPCRT4_ReleaseConnection(&tcpc->common);
            status = RPC_S_OUT_OF_RESOURCES;
            continue;
        }




        nonblocking = 1;
        ret = ioctlsocket(sock, FIONBIO, &nonblocking);
        if (ret < 0)
        {
            WARN("couldn't make socket non-blocking, error %d\n", ret);
            RPCRT4_ReleaseConnection(&tcpc->common);
            status = RPC_S_OUT_OF_RESOURCES;
            continue;
        }

        EnterCriticalSection(&protseq->cs);
        list_add_tail(&protseq->listeners, &tcpc->common.protseq_entry);
        tcpc->common.protseq = protseq;
        LeaveCriticalSection(&protseq->cs);

        freeaddrinfo(ai);



        TRACE("listening on %s\n", endpoint);
        return RPC_S_OK;
    }

    freeaddrinfo(ai);
    ERR("couldn't listen on port %s\n", endpoint);
    return status;
}
