
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int val ;
typedef int u_long ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addrlen; int * ai_addr; int ai_protocol; int ai_socktype; struct addrinfo* ai_next; int * ai_canonname; scalar_t__ ai_flags; } ;
typedef int service ;
typedef int host ;
struct TYPE_5__ {int Endpoint; int NetworkAddr; } ;
struct TYPE_4__ {int sock; } ;
typedef TYPE_1__ RpcConnection_tcp ;
typedef TYPE_2__ RpcConnection ;
typedef int RPC_STATUS ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int ERR (char*,int ,int ,...) ;
 int FIONBIO ;
 int IPPROTO_TCP ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 scalar_t__ PF_UNSPEC ;
 int RPC_S_OK ;
 int RPC_S_SERVER_UNAVAILABLE ;
 int SOCK_STREAM ;
 int TCP_NODELAY ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int WARN (char*,int ) ;
 int WSAGetLastError () ;
 int closesocket (int) ;
 scalar_t__ connect (int,int *,scalar_t__) ;
 int freeaddrinfo (struct addrinfo*) ;
 int gai_strerror (int) ;
 int getaddrinfo (int ,int ,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (int *,scalar_t__,char*,int,char*,int,int) ;
 int ioctlsocket (int,int ,int*) ;
 int rpc ;
 int setsockopt (int,int ,int ,char*,int) ;
 int socket (scalar_t__,int ,int ) ;

__attribute__((used)) static RPC_STATUS rpcrt4_ncacn_ip_tcp_open(RpcConnection* Connection)
{
  RpcConnection_tcp *tcpc = (RpcConnection_tcp *) Connection;
  int sock;
  int ret;
  struct addrinfo *ai;
  struct addrinfo *ai_cur;
  struct addrinfo hints;

  TRACE("(%s, %s)\n", Connection->NetworkAddr, Connection->Endpoint);

  if (tcpc->sock != -1)
    return RPC_S_OK;

  hints.ai_flags = 0;
  hints.ai_family = PF_UNSPEC;
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = IPPROTO_TCP;
  hints.ai_addrlen = 0;
  hints.ai_addr = ((void*)0);
  hints.ai_canonname = ((void*)0);
  hints.ai_next = ((void*)0);

  ret = getaddrinfo(Connection->NetworkAddr, Connection->Endpoint, &hints, &ai);
  if (ret)
  {
    ERR("getaddrinfo for %s:%s failed: %s\n", Connection->NetworkAddr,
      Connection->Endpoint, gai_strerror(ret));
    return RPC_S_SERVER_UNAVAILABLE;
  }

  for (ai_cur = ai; ai_cur; ai_cur = ai_cur->ai_next)
  {
    int val;
    u_long nonblocking;

    if (ai_cur->ai_family != AF_INET && ai_cur->ai_family != AF_INET6)
    {
      TRACE("skipping non-IP/IPv6 address family\n");
      continue;
    }

    if (TRACE_ON(rpc))
    {
      char host[256];
      char service[256];
      getnameinfo(ai_cur->ai_addr, ai_cur->ai_addrlen,
        host, sizeof(host), service, sizeof(service),
        NI_NUMERICHOST | NI_NUMERICSERV);
      TRACE("trying %s:%s\n", host, service);
    }

    sock = socket(ai_cur->ai_family, ai_cur->ai_socktype, ai_cur->ai_protocol);
    if (sock == -1)
    {
      WARN("socket() failed: %u\n", WSAGetLastError());
      continue;
    }

    if (0>connect(sock, ai_cur->ai_addr, ai_cur->ai_addrlen))
    {
      WARN("connect() failed: %u\n", WSAGetLastError());
      closesocket(sock);
      continue;
    }


    val = 1;
    setsockopt(sock, IPPROTO_TCP, TCP_NODELAY, (char *)&val, sizeof(val));
    nonblocking = 1;
    ioctlsocket(sock, FIONBIO, &nonblocking);

    tcpc->sock = sock;

    freeaddrinfo(ai);
    TRACE("connected\n");
    return RPC_S_OK;
  }

  freeaddrinfo(ai);
  ERR("couldn't connect to %s:%s\n", Connection->NetworkAddr, Connection->Endpoint);
  return RPC_S_SERVER_UNAVAILABLE;
}
