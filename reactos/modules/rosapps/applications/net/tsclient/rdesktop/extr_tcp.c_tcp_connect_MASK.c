#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  true_value ;
struct TYPE_11__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; TYPE_6__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;
struct addrinfo {int ai_addrlen; struct addrinfo* ai_next; struct sockaddr* ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_7__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {int sock; TYPE_2__ out; TYPE_1__ in; } ;
struct TYPE_10__ {int tcp_port_rdp; int disconnect_reason; TYPE_3__ tcp; } ;
typedef  TYPE_4__ RDPCLIENT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  INADDR_NONE ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TCP_NODELAY ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*) ; 
 char* FUNC5 (int) ; 
 int FUNC6 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 struct hostent* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,int) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL
FUNC16(RDPCLIENT * This, char *server)
{
	int true_value = 1;

#ifdef IPv6

	int n;
	struct addrinfo hints, *res, *ressave;
	char tcp_port_rdp_s[10];

	snprintf(tcp_port_rdp_s, 10, "%d", This->tcp_port_rdp);

	memset(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;

	if ((n = getaddrinfo(server, tcp_port_rdp_s, &hints, &res)))
	{
		error("getaddrinfo: %s\n", gai_strerror(n));
		return False;
	}

	ressave = res;
	This->tcp.sock = -1;
	while (res)
	{
		This->tcp.sock = socket(res->ai_family, res->ai_socktype, res->ai_protocol);
		if (!(This->tcp.sock < 0))
		{
			if (connect(This->tcp.sock, res->ai_addr, res->ai_addrlen) == 0)
				break;
			close(This->tcp.sock);
			This->tcp.sock = -1;
		}
		res = res->ai_next;
	}
	freeaddrinfo(ressave);

	if (This->tcp.sock == -1)
	{
		error("%s: unable to connect\n", server);
		return False;
	}

#else /* no IPv6 support */

	struct hostent *nslookup;
	struct sockaddr_in servaddr;

	if ((nslookup = FUNC7(server)) != NULL)
	{
		FUNC11(&servaddr.sin_addr, nslookup->h_addr, sizeof(servaddr.sin_addr));
	}
	else if ((servaddr.sin_addr.s_addr = FUNC9(server)) == INADDR_NONE)
	{
		FUNC3("%s: unable to resolve host\n", server);
		This->disconnect_reason = 260;
		return False;
	}

	if ((This->tcp.sock = FUNC15(AF_INET, SOCK_STREAM, 0)) < 0)
	{
		// error("socket: %s\n", strerror(errno)); // EOF
		return False;
	}

	servaddr.sin_family = AF_INET;
	servaddr.sin_port = FUNC8(This->tcp_port_rdp);

	// TODO: apply connection timeout here

	if (FUNC2(This->tcp.sock, (struct sockaddr *) &servaddr, sizeof(struct sockaddr)) < 0)
	{
		// error("connect: %s\n", strerror(errno)); // EOF
		This->disconnect_reason = 516;
		FUNC1(This->tcp.sock);
		return False;
	}

#endif /* IPv6 */

	FUNC13(This->tcp.sock, IPPROTO_TCP, TCP_NODELAY, (void *) &true_value, sizeof(true_value));

	This->tcp.in.size = 4096;
	This->tcp.in.data = (uint8 *) FUNC10(This->tcp.in.size);

	if(This->tcp.in.data == NULL)
	{
		This->disconnect_reason = 262;
		return False;
	}

	This->tcp.out.size = 4096;
	This->tcp.out.data = (uint8 *) FUNC10(This->tcp.out.size);

	if(This->tcp.out.data == NULL)
	{
		This->disconnect_reason = 262;
		return False;
	}

	return True;
}