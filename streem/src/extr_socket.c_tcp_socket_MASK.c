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
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; scalar_t__ ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  strm_value ;
typedef  int /*<<< orphan*/  strm_string ;
typedef  int /*<<< orphan*/  strm_stream ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int STRM_IO_FLUSH ; 
 int STRM_IO_READ ; 
 int STRM_IO_WRITE ; 
 int STRM_NG ; 
 int STRM_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (char*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(strm_stream* strm, int argc, strm_value* args, strm_value* ret)
{
  struct addrinfo hints;
  struct addrinfo *result, *rp;
  int sock, s;
  const char *service;
  char sbuf[12], hbuf[7];
  strm_string host;
  strm_value srv;

#ifdef _WIN32
  WSADATA wsa;
  WSAStartup(MAKEWORD(2, 0), &wsa);
#endif

  FUNC10(strm, argc, args, "Sv", &host, &srv);
  if (FUNC12(srv)) {
    FUNC9(sbuf, "%d", (int)FUNC15(srv));
    service = sbuf;
  }
  else {
    strm_string str = FUNC16(srv);
    service = FUNC14(str, sbuf);
  }

  FUNC7(&hints, 0, sizeof(struct addrinfo));
#ifdef _WIN32
  hints.ai_family = AF_INET;      /* TODO: IPv6 doesn't work on windows */
#else
  hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
#endif
  hints.ai_socktype = SOCK_STREAM;
  hints.ai_protocol = 0;          /* Any protocol */
  s = FUNC6(FUNC14(host, hbuf), service, &hints, &result);

  if (s != 0) {
    FUNC13(strm, FUNC5(s));
    return STRM_NG;
  }

  for (rp = result; rp != NULL; rp = rp->ai_next) {
    sock = FUNC8(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
    if (sock == -1) continue;

    if (FUNC3(sock, rp->ai_addr, rp->ai_addrlen) != -1)
      break;                    /* Success */
    FUNC2(sock);
  }

  FUNC4(result);
  if (rp == NULL) {
    FUNC13(strm, "socket error: connect");
    return STRM_NG;
  }
  *ret = FUNC11(sock, STRM_IO_READ|STRM_IO_WRITE|STRM_IO_FLUSH);
  return STRM_OK;
}