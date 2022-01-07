
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int saddr ;
typedef int reuse ;
typedef scalar_t__ SOCKET ;
typedef int DWORD ;


 int AF_INET ;
 int FALSE ;
 scalar_t__ INVALID_SOCKET ;
 scalar_t__ SERVERPORT ;
 unsigned int SOCKET_ERROR ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int WSAEACCES ;
 int WSAGetLastError () ;
 int accept (scalar_t__,struct sockaddr*,int*) ;
 unsigned int bind (scalar_t__,struct sockaddr*,int) ;
 int closesocket (scalar_t__) ;
 unsigned int connect (int,struct sockaddr*,int) ;
 unsigned int getsockopt (scalar_t__,int ,int ,char*,int*) ;
 int htons (scalar_t__) ;
 int inet_addr (char*) ;
 unsigned int listen (scalar_t__,int) ;
 int ok (int,char*,...) ;
 int set_blocking (scalar_t__,int ) ;
 unsigned int setsockopt (scalar_t__,int ,int ,char*,int) ;
 void* socket (int ,int ,int ) ;
 int trace (char*) ;

__attribute__((used)) static void test_so_reuseaddr(void)
{
    struct sockaddr_in saddr;
    SOCKET s1,s2;
    unsigned int rc,reuse;
    int size;
    DWORD err;

    saddr.sin_family = AF_INET;
    saddr.sin_port = htons(SERVERPORT+1);
    saddr.sin_addr.s_addr = inet_addr("127.0.0.1");

    s1=socket(AF_INET, SOCK_STREAM, 0);
    ok(s1!=INVALID_SOCKET, "socket() failed error: %d\n", WSAGetLastError());
    rc = bind(s1, (struct sockaddr*)&saddr, sizeof(saddr));
    ok(rc!=SOCKET_ERROR, "bind(s1) failed error: %d\n", WSAGetLastError());

    s2=socket(AF_INET, SOCK_STREAM, 0);
    ok(s2!=INVALID_SOCKET, "socket() failed error: %d\n", WSAGetLastError());

    reuse=0x1234;
    size=sizeof(reuse);
    rc=getsockopt(s2, SOL_SOCKET, SO_REUSEADDR, (char*)&reuse, &size );
    ok(rc==0 && reuse==0,"wrong result in getsockopt(SO_REUSEADDR): rc=%d reuse=%d\n",rc,reuse);

    rc = bind(s2, (struct sockaddr*)&saddr, sizeof(saddr));
    ok(rc==SOCKET_ERROR, "bind() succeeded\n");

    reuse = 1;
    rc = setsockopt(s2, SOL_SOCKET, SO_REUSEADDR, (char*)&reuse, sizeof(reuse));
    ok(rc==0, "setsockopt() failed error: %d\n", WSAGetLastError());




    rc = bind(s2, (struct sockaddr*)&saddr, sizeof(saddr));
    if(rc==0)
    {
        int s3=socket(AF_INET, SOCK_STREAM, 0), s4;
        trace("<= Win XP behavior of SO_REUSEADDR\n");



        set_blocking(s1, FALSE);
        set_blocking(s2, FALSE);
        rc = listen(s1, 1);
        ok(!rc, "listen() failed with error: %d\n", WSAGetLastError());
        rc = listen(s2, 1);
        ok(!rc, "listen() failed with error: %d\n", WSAGetLastError());
        rc = connect(s3, (struct sockaddr*)&saddr, sizeof(saddr));
        ok(!rc, "connecting to accepting socket failed %d\n", WSAGetLastError());


        size = sizeof(saddr);
        s4 = accept(s1, (struct sockaddr*)&saddr, &size);
        if(s4 == INVALID_SOCKET)
            s4 = accept(s2, (struct sockaddr*)&saddr, &size);
        ok(s4 != INVALID_SOCKET, "none of the listening sockets could get the connection\n");

        closesocket(s1);
        closesocket(s3);
        closesocket(s4);
    }
    else
    {
        trace(">= Win 2003 behavior of SO_REUSEADDR\n");
        err = WSAGetLastError();
        ok(err==WSAEACCES, "expected 10013, got %d\n", err);

        closesocket(s1);
        rc = bind(s2, (struct sockaddr*)&saddr, sizeof(saddr));
        ok(rc==0, "bind() failed error: %d\n", WSAGetLastError());
    }

    closesocket(s2);
}
