#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  yes ;
struct TYPE_22__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_20__ {scalar_t__ s_addr; } ;
struct in_pktinfo {TYPE_1__ ipi_addr; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  s3addr ;
typedef  int /*<<< orphan*/  s2addr ;
typedef  int /*<<< orphan*/  s1addr ;
typedef  int /*<<< orphan*/  recvbuf ;
typedef  int /*<<< orphan*/  pktbuf ;
typedef  int /*<<< orphan*/  pWSARecvMsg ;
typedef  int /*<<< orphan*/  ov ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  addresses ;
typedef  int /*<<< orphan*/  WSARecvMsg_GUID ;
struct TYPE_21__ {char* buf; int len; } ;
struct TYPE_23__ {scalar_t__ hEvent; int namelen; int dwBufferCount; int dwFlags; TYPE_2__ Control; TYPE_7__* lpBuffers; struct sockaddr* name; } ;
typedef  TYPE_4__ WSAOVERLAPPED ;
typedef  TYPE_4__ WSAMSG ;
struct TYPE_24__ {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef  TYPE_6__ WSACMSGHDR ;
struct TYPE_25__ {char* buf; int len; } ;
typedef  TYPE_7__ WSABUF ;
typedef  void* ULONG ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  scalar_t__ SOCKET ;
typedef  unsigned int (* LPFN_WSARECVMSG ) (scalar_t__,TYPE_4__*,int*,TYPE_4__*,int /*<<< orphan*/ *) ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ IPPROTO_IP ; 
 scalar_t__ IP_PKTINFO ; 
 int IP_PKTINFO_LEN ; 
 int MSG_CTRUNC ; 
 int /*<<< orphan*/  SIO_GET_EXTENSION_FUNCTION_POINTER ; 
 unsigned int SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 int WSAEFAULT ; 
 int WSAEMSGSIZE ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,TYPE_4__*,int*,int,int*) ; 
 int /*<<< orphan*/  WSAID_WSARECVMSG ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,unsigned int (*) (scalar_t__,TYPE_4__*,int*,TYPE_4__*,int /*<<< orphan*/ *),int,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_6__*) ; 
 TYPE_6__* FUNC8 (TYPE_4__*) ; 
 TYPE_6__* FUNC9 (TYPE_4__*,TYPE_6__*) ; 
 int WSA_IO_PENDING ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 unsigned int FUNC11 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,struct sockaddr*,int*) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 void* FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,...) ; 
 unsigned int FUNC19 (scalar_t__,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 unsigned int FUNC20 (scalar_t__,scalar_t__,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 

__attribute__((used)) static void FUNC25(void)
{
    ULONG addresses[2] = {FUNC16("127.0.0.1"), FUNC14(INADDR_ANY)};
    char recvbuf[10], pktbuf[512], msg[] = "HELLO";
    struct sockaddr_in s1addr, s2addr, s3addr;
    GUID WSARecvMsg_GUID = WSAID_WSARECVMSG;
    LPFN_WSARECVMSG pWSARecvMsg = NULL;
    unsigned int rc, yes = 1;
    BOOL foundhdr;
    DWORD dwBytes, dwSize, dwFlags;
    socklen_t addrlen;
    WSACMSGHDR *cmsg;
    WSAOVERLAPPED ov;
    WSABUF iovec[1];
    SOCKET s1, s2;
    WSAMSG hdr;
    int i, err;

    FUNC17(&ov, 0, sizeof(ov));
    ov.hEvent = FUNC1(NULL, FALSE, FALSE, NULL);
    if (ov.hEvent == INVALID_HANDLE_VALUE)
    {
        FUNC21("Could not create event object, some tests will be skipped. errno = %d\n", FUNC2());
        return;
    }

    FUNC17(&hdr, 0x00, sizeof(hdr));
    s1addr.sin_family = AF_INET;
    s1addr.sin_port   = FUNC15(0);
    /* Note: s1addr.sin_addr is set below */
    iovec[0].buf      = recvbuf;
    iovec[0].len      = sizeof(recvbuf);
    hdr.name          = (struct sockaddr*)&s3addr;
    hdr.namelen       = sizeof(s3addr);
    hdr.lpBuffers     = &iovec[0];
    hdr.dwBufferCount = 1;
    hdr.Control.buf   = pktbuf;
    /* Note: hdr.Control.len is set below */
    hdr.dwFlags       = 0;

    for (i=0;i<sizeof(addresses)/sizeof(UINT32);i++)
    {
        s1addr.sin_addr.s_addr = addresses[i];

        /* Build "server" side socket */
        s1=FUNC22(AF_INET, SOCK_DGRAM, 0);
        if (s1 == INVALID_SOCKET)
        {
            FUNC21("socket() failed error, some tests skipped: %d\n", FUNC4());
            goto cleanup;
        }

        /* Obtain the WSARecvMsg function */
        FUNC6(s1, SIO_GET_EXTENSION_FUNCTION_POINTER, &WSARecvMsg_GUID, sizeof(WSARecvMsg_GUID),
                 pWSARecvMsg, sizeof(pWSARecvMsg), &dwBytes, NULL, NULL);
        if (!pWSARecvMsg)
        {
            FUNC24("WSARecvMsg is unsupported, some tests will be skipped.\n");
            FUNC12(s1);
            goto cleanup;
        }

        /* Setup the server side socket */
        rc=FUNC11(s1, (struct sockaddr*)&s1addr, sizeof(s1addr));
        FUNC18(rc != SOCKET_ERROR, "bind() failed error: %d\n", FUNC4());
        rc=FUNC20(s1, IPPROTO_IP, IP_PKTINFO, (const char*)&yes, sizeof(yes));
        FUNC18(rc == 0, "failed to set IPPROTO_IP flag IP_PKTINFO!\n");

        /* Build "client" side socket */
        addrlen = sizeof(s2addr);
        if (FUNC13(s1, (struct sockaddr *) &s2addr, &addrlen) != 0)
        {
            FUNC21("Failed to call getsockname, some tests skipped: %d\n", FUNC4());
            FUNC12(s1);
            goto cleanup;
        }
        s2addr.sin_addr.s_addr = addresses[0]; /* Always target the local adapter address */
        s2=FUNC22(AF_INET, SOCK_DGRAM, 0);
        if (s2 == INVALID_SOCKET)
        {
            FUNC21("socket() failed error, some tests skipped: %d\n", FUNC4());
            FUNC12(s1);
            goto cleanup;
        }

        /* Test an empty message header */
        rc=pWSARecvMsg(s1, NULL, NULL, NULL, NULL);
        err=FUNC4();
        FUNC18(rc == SOCKET_ERROR && err == WSAEFAULT, "WSARecvMsg() failed error: %d (ret = %d)\n", err, rc);

        /*
         * Send a packet from the client to the server and test for specifying
         * a short control header.
         */
        FUNC3(0xdeadbeef);
        rc=FUNC19(s2, msg, sizeof(msg), 0, (struct sockaddr*)&s2addr, sizeof(s2addr));
        FUNC18(rc == sizeof(msg), "sendto() failed error: %d\n", FUNC4());
        FUNC18(FUNC2() == ERROR_SUCCESS, "Expected 0, got %d\n", FUNC2());
        hdr.Control.len = 1;
        rc=pWSARecvMsg(s1, &hdr, &dwSize, NULL, NULL);
        err=FUNC4();
        FUNC18(rc == SOCKET_ERROR && err == WSAEMSGSIZE && (hdr.dwFlags & MSG_CTRUNC),
           "WSARecvMsg() failed error: %d (ret: %d, flags: %d)\n", err, rc, hdr.dwFlags);
        hdr.dwFlags = 0; /* Reset flags */

        /* Perform another short control header test, this time with an overlapped receive */
        hdr.Control.len = 1;
        rc=pWSARecvMsg(s1, &hdr, NULL, &ov, NULL);
        err=FUNC4();
        FUNC18(rc != 0 && err == WSA_IO_PENDING, "WSARecvMsg() failed error: %d\n", err);
        FUNC3(0xdeadbeef);
        rc=FUNC19(s2, msg, sizeof(msg), 0, (struct sockaddr*)&s2addr, sizeof(s2addr));
        FUNC18(rc == sizeof(msg), "sendto() failed error: %d\n", FUNC4());
        FUNC18(FUNC2() == ERROR_SUCCESS, "Expected 0, got %d\n", FUNC2());
        if (FUNC10(ov.hEvent, 100) != WAIT_OBJECT_0)
        {
            FUNC21("Server side did not receive packet, some tests skipped.\n");
            FUNC12(s2);
            FUNC12(s1);
            continue;
        }
        dwFlags = 0;
        FUNC5(s1, &ov, NULL, FALSE, &dwFlags);
        FUNC18(dwFlags == 0,
           "WSAGetOverlappedResult() returned unexpected flags %d!\n", dwFlags);
        FUNC18(hdr.dwFlags == MSG_CTRUNC,
           "WSARecvMsg() overlapped operation set unexpected flags %d.\n", hdr.dwFlags);
        hdr.dwFlags = 0; /* Reset flags */

        /*
         * Setup an overlapped receive, send a packet, then wait for the packet to be retrieved
         * on the server end and check that the returned packet matches what was sent.
         */
        hdr.Control.len = sizeof(pktbuf);
        rc=pWSARecvMsg(s1, &hdr, NULL, &ov, NULL);
        err=FUNC4();
        FUNC18(rc != 0 && err == WSA_IO_PENDING, "WSARecvMsg() failed error: %d\n", err);
        FUNC18(hdr.Control.len == sizeof(pktbuf),
           "WSARecvMsg() control length mismatch (%d != sizeof pktbuf).\n", hdr.Control.len);
        rc=FUNC19(s2, msg, sizeof(msg), 0, (struct sockaddr*)&s2addr, sizeof(s2addr));
        FUNC18(rc == sizeof(msg), "sendto() failed error: %d\n", FUNC4());
        if (FUNC10(ov.hEvent, 100) != WAIT_OBJECT_0)
        {
            FUNC21("Server side did not receive packet, some tests skipped.\n");
            FUNC12(s2);
            FUNC12(s1);
            continue;
        }
        dwSize = 0;
        FUNC5(s1, &ov, &dwSize, FALSE, NULL);
        FUNC18(dwSize == sizeof(msg),
           "WSARecvMsg() buffer length does not match transmitted data!\n");
        FUNC18(FUNC23(iovec[0].buf, msg, sizeof(msg)) == 0,
           "WSARecvMsg() buffer does not match transmitted data!\n");
        FUNC18(hdr.Control.len == IP_PKTINFO_LEN,
           "WSARecvMsg() control length mismatch (%d).\n", hdr.Control.len);

        /* Test for the expected IP_PKTINFO return information. */
        foundhdr = FALSE;
        for (cmsg = FUNC8(&hdr); cmsg != NULL; cmsg = FUNC9(&hdr, cmsg))
        {
            if (cmsg->cmsg_level == IPPROTO_IP && cmsg->cmsg_type == IP_PKTINFO)
            {
                struct in_pktinfo *pi = (struct in_pktinfo *)FUNC7(cmsg);

                FUNC18(pi->ipi_addr.s_addr == s2addr.sin_addr.s_addr, "destination ip mismatch!\n");
                foundhdr = TRUE;
            }
        }
        FUNC18(foundhdr, "IP_PKTINFO header information was not returned!\n");

        FUNC12(s2);
        FUNC12(s1);
    }

cleanup:
    FUNC0(ov.hEvent);
}