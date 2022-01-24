#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct socket_data {int sock; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; scalar_t__ ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  sockopt ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  AI_PASSIVE ; 
 int EAI_AGAIN ; 
 int /*<<< orphan*/  INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_OPENTYPE ; 
 int SO_SYNCHRONOUS_NONALERT ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,struct addrinfo*,struct addrinfo**) ; 
 scalar_t__ FUNC7 (int,int) ; 
 struct socket_data* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  server_accept ; 
 int /*<<< orphan*/  server_close ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  strm_producer ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct addrinfo hints;
  struct addrinfo *result, *rp;
  int sock, s;
  strm_value srv;
  const char *service;
  char buf[12];
  struct socket_data *sd;
  strm_stream *t;

#ifdef _WIN32
  int sockopt = SO_SYNCHRONOUS_NONALERT;
  WSADATA wsa;
  WSAStartup(MAKEWORD(2, 0), &wsa);
  setsockopt(INVALID_SOCKET, SOL_SOCKET, SO_OPENTYPE, (char *)&sockopt, sizeof(sockopt));
#endif

  FUNC13(strm, argc, args, "v", &srv);
  if (FUNC14(srv)) {
    FUNC12(buf, "%d", (int)FUNC19(srv));
    service = buf;
  }
  else {
    strm_string str = FUNC20(srv);
    service = FUNC16(str, buf);
  }

  FUNC9(&hints, 0, sizeof(struct addrinfo));
#ifdef _WIN32
  hints.ai_family = AF_INET;      /* TODO: IPv6 doesn't work on windows */
#else
  hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
#endif
  hints.ai_socktype = SOCK_STREAM;/* Datagram socket */
  hints.ai_flags = AI_PASSIVE;    /* For wildcard IP address */
  hints.ai_protocol = 0;          /* Any protocol */

  for (;;) {
    s = FUNC6(NULL, service, &hints, &result);
    if (s != 0) {
      if (s == EAI_AGAIN) continue;
      FUNC15(strm, FUNC5(s));
      return STRM_NG;
    }
    break;
  }

  for (rp = result; rp != NULL; rp = rp->ai_next) {
    sock = FUNC11(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
    if (sock == -1) continue;

    if (FUNC2(sock, rp->ai_addr, rp->ai_addrlen) == 0)
      break;                    /* Success */
    FUNC3(sock);
  }

  FUNC4(result);
  if (rp == NULL) {
    FUNC15(strm, "socket error: bind");
    return STRM_NG;
  }

  if (FUNC7(sock, 5) < 0) {
    FUNC3(sock);
    FUNC15(strm, "socket error: listen");
    return STRM_NG;
  }

  sd = FUNC8(sizeof(struct socket_data));
  sd->sock = sock;
  t = FUNC17(strm_producer, server_accept, server_close, (void*)sd);
  *ret = FUNC18(t);
  return STRM_OK;
}