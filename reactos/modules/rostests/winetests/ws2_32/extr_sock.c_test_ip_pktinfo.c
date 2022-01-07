
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int yes ;
struct TYPE_22__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_3__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_20__ {scalar_t__ s_addr; } ;
struct in_pktinfo {TYPE_1__ ipi_addr; } ;
typedef int socklen_t ;
typedef int s3addr ;
typedef int s2addr ;
typedef int s1addr ;
typedef int recvbuf ;
typedef int pktbuf ;
typedef int pWSARecvMsg ;
typedef int ov ;
typedef int msg ;
typedef int hdr ;
typedef int addresses ;
typedef int WSARecvMsg_GUID ;
struct TYPE_21__ {char* buf; int len; } ;
struct TYPE_23__ {scalar_t__ hEvent; int namelen; int dwBufferCount; int dwFlags; TYPE_2__ Control; TYPE_7__* lpBuffers; struct sockaddr* name; } ;
typedef TYPE_4__ WSAOVERLAPPED ;
typedef TYPE_4__ WSAMSG ;
struct TYPE_24__ {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef TYPE_6__ WSACMSGHDR ;
struct TYPE_25__ {char* buf; int len; } ;
typedef TYPE_7__ WSABUF ;
typedef void* ULONG ;
typedef int UINT32 ;
typedef scalar_t__ SOCKET ;
typedef unsigned int (* LPFN_WSARECVMSG ) (scalar_t__,TYPE_4__*,int*,TYPE_4__*,int *) ;
typedef int GUID ;
typedef int DWORD ;
typedef int BOOL ;


 int AF_INET ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateEventA (int *,int,int,int *) ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int GetLastError () ;
 int INADDR_ANY ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ IPPROTO_IP ;
 scalar_t__ IP_PKTINFO ;
 int IP_PKTINFO_LEN ;
 int MSG_CTRUNC ;
 int SIO_GET_EXTENSION_FUNCTION_POINTER ;
 unsigned int SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int SetLastError (int) ;
 int TRUE ;
 scalar_t__ WAIT_OBJECT_0 ;
 int WSAEFAULT ;
 int WSAEMSGSIZE ;
 int WSAGetLastError () ;
 int WSAGetOverlappedResult (scalar_t__,TYPE_4__*,int*,int,int*) ;
 int WSAID_WSARECVMSG ;
 int WSAIoctl (scalar_t__,int ,int *,int,unsigned int (*) (scalar_t__,TYPE_4__*,int*,TYPE_4__*,int *),int,int*,int *,int *) ;
 scalar_t__ WSA_CMSG_DATA (TYPE_6__*) ;
 TYPE_6__* WSA_CMSG_FIRSTHDR (TYPE_4__*) ;
 TYPE_6__* WSA_CMSG_NXTHDR (TYPE_4__*,TYPE_6__*) ;
 int WSA_IO_PENDING ;
 scalar_t__ WaitForSingleObject (scalar_t__,int) ;
 unsigned int bind (scalar_t__,struct sockaddr*,int) ;
 int closesocket (scalar_t__) ;
 scalar_t__ getsockname (scalar_t__,struct sockaddr*,int*) ;
 void* htonl (int ) ;
 int htons (int ) ;
 void* inet_addr (char*) ;
 int memset (TYPE_4__*,int,int) ;
 int ok (int,char*,...) ;
 unsigned int sendto (scalar_t__,char*,int,int ,struct sockaddr*,int) ;
 unsigned int setsockopt (scalar_t__,scalar_t__,scalar_t__,char const*,int) ;
 int skip (char*,...) ;
 scalar_t__ socket (int ,int ,int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_ip_pktinfo(void)
{
    ULONG addresses[2] = {inet_addr("127.0.0.1"), htonl(INADDR_ANY)};
    char recvbuf[10], pktbuf[512], msg[] = "HELLO";
    struct sockaddr_in s1addr, s2addr, s3addr;
    GUID WSARecvMsg_GUID = WSAID_WSARECVMSG;
    LPFN_WSARECVMSG pWSARecvMsg = ((void*)0);
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

    memset(&ov, 0, sizeof(ov));
    ov.hEvent = CreateEventA(((void*)0), FALSE, FALSE, ((void*)0));
    if (ov.hEvent == INVALID_HANDLE_VALUE)
    {
        skip("Could not create event object, some tests will be skipped. errno = %d\n", GetLastError());
        return;
    }

    memset(&hdr, 0x00, sizeof(hdr));
    s1addr.sin_family = AF_INET;
    s1addr.sin_port = htons(0);

    iovec[0].buf = recvbuf;
    iovec[0].len = sizeof(recvbuf);
    hdr.name = (struct sockaddr*)&s3addr;
    hdr.namelen = sizeof(s3addr);
    hdr.lpBuffers = &iovec[0];
    hdr.dwBufferCount = 1;
    hdr.Control.buf = pktbuf;

    hdr.dwFlags = 0;

    for (i=0;i<sizeof(addresses)/sizeof(UINT32);i++)
    {
        s1addr.sin_addr.s_addr = addresses[i];


        s1=socket(AF_INET, SOCK_DGRAM, 0);
        if (s1 == INVALID_SOCKET)
        {
            skip("socket() failed error, some tests skipped: %d\n", WSAGetLastError());
            goto cleanup;
        }


        WSAIoctl(s1, SIO_GET_EXTENSION_FUNCTION_POINTER, &WSARecvMsg_GUID, sizeof(WSARecvMsg_GUID),
                 &pWSARecvMsg, sizeof(pWSARecvMsg), &dwBytes, ((void*)0), ((void*)0));
        if (!pWSARecvMsg)
        {
            win_skip("WSARecvMsg is unsupported, some tests will be skipped.\n");
            closesocket(s1);
            goto cleanup;
        }


        rc=bind(s1, (struct sockaddr*)&s1addr, sizeof(s1addr));
        ok(rc != SOCKET_ERROR, "bind() failed error: %d\n", WSAGetLastError());
        rc=setsockopt(s1, IPPROTO_IP, IP_PKTINFO, (const char*)&yes, sizeof(yes));
        ok(rc == 0, "failed to set IPPROTO_IP flag IP_PKTINFO!\n");


        addrlen = sizeof(s2addr);
        if (getsockname(s1, (struct sockaddr *) &s2addr, &addrlen) != 0)
        {
            skip("Failed to call getsockname, some tests skipped: %d\n", WSAGetLastError());
            closesocket(s1);
            goto cleanup;
        }
        s2addr.sin_addr.s_addr = addresses[0];
        s2=socket(AF_INET, SOCK_DGRAM, 0);
        if (s2 == INVALID_SOCKET)
        {
            skip("socket() failed error, some tests skipped: %d\n", WSAGetLastError());
            closesocket(s1);
            goto cleanup;
        }


        rc=pWSARecvMsg(s1, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        err=WSAGetLastError();
        ok(rc == SOCKET_ERROR && err == WSAEFAULT, "WSARecvMsg() failed error: %d (ret = %d)\n", err, rc);





        SetLastError(0xdeadbeef);
        rc=sendto(s2, msg, sizeof(msg), 0, (struct sockaddr*)&s2addr, sizeof(s2addr));
        ok(rc == sizeof(msg), "sendto() failed error: %d\n", WSAGetLastError());
        ok(GetLastError() == ERROR_SUCCESS, "Expected 0, got %d\n", GetLastError());
        hdr.Control.len = 1;
        rc=pWSARecvMsg(s1, &hdr, &dwSize, ((void*)0), ((void*)0));
        err=WSAGetLastError();
        ok(rc == SOCKET_ERROR && err == WSAEMSGSIZE && (hdr.dwFlags & MSG_CTRUNC),
           "WSARecvMsg() failed error: %d (ret: %d, flags: %d)\n", err, rc, hdr.dwFlags);
        hdr.dwFlags = 0;


        hdr.Control.len = 1;
        rc=pWSARecvMsg(s1, &hdr, ((void*)0), &ov, ((void*)0));
        err=WSAGetLastError();
        ok(rc != 0 && err == WSA_IO_PENDING, "WSARecvMsg() failed error: %d\n", err);
        SetLastError(0xdeadbeef);
        rc=sendto(s2, msg, sizeof(msg), 0, (struct sockaddr*)&s2addr, sizeof(s2addr));
        ok(rc == sizeof(msg), "sendto() failed error: %d\n", WSAGetLastError());
        ok(GetLastError() == ERROR_SUCCESS, "Expected 0, got %d\n", GetLastError());
        if (WaitForSingleObject(ov.hEvent, 100) != WAIT_OBJECT_0)
        {
            skip("Server side did not receive packet, some tests skipped.\n");
            closesocket(s2);
            closesocket(s1);
            continue;
        }
        dwFlags = 0;
        WSAGetOverlappedResult(s1, &ov, ((void*)0), FALSE, &dwFlags);
        ok(dwFlags == 0,
           "WSAGetOverlappedResult() returned unexpected flags %d!\n", dwFlags);
        ok(hdr.dwFlags == MSG_CTRUNC,
           "WSARecvMsg() overlapped operation set unexpected flags %d.\n", hdr.dwFlags);
        hdr.dwFlags = 0;





        hdr.Control.len = sizeof(pktbuf);
        rc=pWSARecvMsg(s1, &hdr, ((void*)0), &ov, ((void*)0));
        err=WSAGetLastError();
        ok(rc != 0 && err == WSA_IO_PENDING, "WSARecvMsg() failed error: %d\n", err);
        ok(hdr.Control.len == sizeof(pktbuf),
           "WSARecvMsg() control length mismatch (%d != sizeof pktbuf).\n", hdr.Control.len);
        rc=sendto(s2, msg, sizeof(msg), 0, (struct sockaddr*)&s2addr, sizeof(s2addr));
        ok(rc == sizeof(msg), "sendto() failed error: %d\n", WSAGetLastError());
        if (WaitForSingleObject(ov.hEvent, 100) != WAIT_OBJECT_0)
        {
            skip("Server side did not receive packet, some tests skipped.\n");
            closesocket(s2);
            closesocket(s1);
            continue;
        }
        dwSize = 0;
        WSAGetOverlappedResult(s1, &ov, &dwSize, FALSE, ((void*)0));
        ok(dwSize == sizeof(msg),
           "WSARecvMsg() buffer length does not match transmitted data!\n");
        ok(strncmp(iovec[0].buf, msg, sizeof(msg)) == 0,
           "WSARecvMsg() buffer does not match transmitted data!\n");
        ok(hdr.Control.len == IP_PKTINFO_LEN,
           "WSARecvMsg() control length mismatch (%d).\n", hdr.Control.len);


        foundhdr = FALSE;
        for (cmsg = WSA_CMSG_FIRSTHDR(&hdr); cmsg != ((void*)0); cmsg = WSA_CMSG_NXTHDR(&hdr, cmsg))
        {
            if (cmsg->cmsg_level == IPPROTO_IP && cmsg->cmsg_type == IP_PKTINFO)
            {
                struct in_pktinfo *pi = (struct in_pktinfo *)WSA_CMSG_DATA(cmsg);

                ok(pi->ipi_addr.s_addr == s2addr.sin_addr.s_addr, "destination ip mismatch!\n");
                foundhdr = TRUE;
            }
        }
        ok(foundhdr, "IP_PKTINFO header information was not returned!\n");

        closesocket(s2);
        closesocket(s1);
    }

cleanup:
    CloseHandle(ov.hEvent);
}
