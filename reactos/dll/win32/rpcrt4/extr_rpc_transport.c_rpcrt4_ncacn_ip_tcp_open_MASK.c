#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  val ;
typedef  int u_long ;
struct addrinfo {scalar_t__ ai_family; scalar_t__ ai_addrlen; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; struct addrinfo* ai_next; int /*<<< orphan*/ * ai_canonname; scalar_t__ ai_flags; } ;
typedef  int /*<<< orphan*/  service ;
typedef  int /*<<< orphan*/  host ;
struct TYPE_5__ {int /*<<< orphan*/  Endpoint; int /*<<< orphan*/  NetworkAddr; } ;
struct TYPE_4__ {int sock; } ;
typedef  TYPE_1__ RpcConnection_tcp ;
typedef  TYPE_2__ RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 scalar_t__ PF_UNSPEC ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  RPC_S_SERVER_UNAVAILABLE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  rpc ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RPC_STATUS FUNC14(RpcConnection* Connection)
{
  RpcConnection_tcp *tcpc = (RpcConnection_tcp *) Connection;
  int sock;
  int ret;
  struct addrinfo *ai;
  struct addrinfo *ai_cur;
  struct addrinfo hints;

  FUNC1("(%s, %s)\n", Connection->NetworkAddr, Connection->Endpoint);

  if (tcpc->sock != -1)
    return RPC_S_OK;

  hints.ai_flags          = 0;
  hints.ai_family         = PF_UNSPEC;
  hints.ai_socktype       = SOCK_STREAM;
  hints.ai_protocol       = IPPROTO_TCP;
  hints.ai_addrlen        = 0;
  hints.ai_addr           = NULL;
  hints.ai_canonname      = NULL;
  hints.ai_next           = NULL;

  ret = FUNC9(Connection->NetworkAddr, Connection->Endpoint, &hints, &ai);
  if (ret)
  {
    FUNC0("getaddrinfo for %s:%s failed: %s\n", Connection->NetworkAddr,
      Connection->Endpoint, FUNC8(ret));
    return RPC_S_SERVER_UNAVAILABLE;
  }

  for (ai_cur = ai; ai_cur; ai_cur = ai_cur->ai_next)
  {
    int val;
    u_long nonblocking;

    if (ai_cur->ai_family != AF_INET && ai_cur->ai_family != AF_INET6)
    {
      FUNC1("skipping non-IP/IPv6 address family\n");
      continue;
    }

    if (FUNC2(rpc))
    {
      char host[256];
      char service[256];
      FUNC10(ai_cur->ai_addr, ai_cur->ai_addrlen,
        host, sizeof(host), service, sizeof(service),
        NI_NUMERICHOST | NI_NUMERICSERV);
      FUNC1("trying %s:%s\n", host, service);
    }

    sock = FUNC13(ai_cur->ai_family, ai_cur->ai_socktype, ai_cur->ai_protocol);
    if (sock == -1)
    {
      FUNC3("socket() failed: %u\n", FUNC4());
      continue;
    }

    if (0>FUNC6(sock, ai_cur->ai_addr, ai_cur->ai_addrlen))
    {
      FUNC3("connect() failed: %u\n", FUNC4());
      FUNC5(sock);
      continue;
    }

    /* RPC depends on having minimal latency so disable the Nagle algorithm */
    val = 1;
    FUNC12(sock, IPPROTO_TCP, TCP_NODELAY, (char *)&val, sizeof(val));
    nonblocking = 1;
    FUNC11(sock, FIONBIO, &nonblocking);

    tcpc->sock = sock;

    FUNC7(ai);
    FUNC1("connected\n");
    return RPC_S_OK;
  }

  FUNC7(ai);
  FUNC0("couldn't connect to %s:%s\n", Connection->NetworkAddr, Connection->Endpoint);
  return RPC_S_SERVER_UNAVAILABLE;
}