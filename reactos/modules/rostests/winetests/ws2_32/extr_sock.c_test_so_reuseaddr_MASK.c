#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  saddr ;
typedef  int /*<<< orphan*/  reuse ;
typedef  scalar_t__ SOCKET ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ INVALID_SOCKET ; 
 scalar_t__ SERVERPORT ; 
 unsigned int SOCKET_ERROR ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  WSAEACCES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (scalar_t__,struct sockaddr*,int*) ; 
 unsigned int FUNC2 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 unsigned int FUNC4 (int,struct sockaddr*,int) ; 
 unsigned int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 unsigned int FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(void)
{
    struct sockaddr_in saddr;
    SOCKET s1,s2;
    unsigned int rc,reuse;
    int size;
    DWORD err;

    saddr.sin_family      = AF_INET;
    saddr.sin_port        = FUNC6(SERVERPORT+1);
    saddr.sin_addr.s_addr = FUNC7("127.0.0.1");

    s1=FUNC12(AF_INET, SOCK_STREAM, 0);
    FUNC9(s1!=INVALID_SOCKET, "socket() failed error: %d\n", FUNC0());
    rc = FUNC2(s1, (struct sockaddr*)&saddr, sizeof(saddr));
    FUNC9(rc!=SOCKET_ERROR, "bind(s1) failed error: %d\n", FUNC0());

    s2=FUNC12(AF_INET, SOCK_STREAM, 0);
    FUNC9(s2!=INVALID_SOCKET, "socket() failed error: %d\n", FUNC0());

    reuse=0x1234;
    size=sizeof(reuse);
    rc=FUNC5(s2, SOL_SOCKET, SO_REUSEADDR, (char*)&reuse, &size );
    FUNC9(rc==0 && reuse==0,"wrong result in getsockopt(SO_REUSEADDR): rc=%d reuse=%d\n",rc,reuse);

    rc = FUNC2(s2, (struct sockaddr*)&saddr, sizeof(saddr));
    FUNC9(rc==SOCKET_ERROR, "bind() succeeded\n");

    reuse = 1;
    rc = FUNC11(s2, SOL_SOCKET, SO_REUSEADDR, (char*)&reuse, sizeof(reuse));
    FUNC9(rc==0, "setsockopt() failed error: %d\n", FUNC0());

    /* On Win2k3 and above, all SO_REUSEADDR seems to do is to allow binding to
     * a port immediately after closing another socket on that port, so
     * basically following the BSD socket semantics here. */
    rc = FUNC2(s2, (struct sockaddr*)&saddr, sizeof(saddr));
    if(rc==0)
    {
        int s3=FUNC12(AF_INET, SOCK_STREAM, 0), s4;
        FUNC13("<= Win XP behavior of SO_REUSEADDR\n");

        /* If we could bind again in the same port this is Windows version <= XP.
         * Lets test if we can really connect to one of them. */
        FUNC10(s1, FALSE);
        FUNC10(s2, FALSE);
        rc = FUNC8(s1, 1);
        FUNC9(!rc, "listen() failed with error: %d\n", FUNC0());
        rc = FUNC8(s2, 1);
        FUNC9(!rc, "listen() failed with error: %d\n", FUNC0());
        rc = FUNC4(s3, (struct sockaddr*)&saddr, sizeof(saddr));
        FUNC9(!rc, "connecting to accepting socket failed %d\n", FUNC0());

        /* the delivery of the connection is random so we need to try on both sockets */
        size = sizeof(saddr);
        s4 = FUNC1(s1, (struct sockaddr*)&saddr, &size);
        if(s4 == INVALID_SOCKET)
            s4 = FUNC1(s2, (struct sockaddr*)&saddr, &size);
        FUNC9(s4 != INVALID_SOCKET, "none of the listening sockets could get the connection\n");

        FUNC3(s1);
        FUNC3(s3);
        FUNC3(s4);
    }
    else
    {
        FUNC13(">= Win 2003 behavior of SO_REUSEADDR\n");
        err = FUNC0();
        FUNC9(err==WSAEACCES, "expected 10013, got %d\n", err);

        FUNC3(s1);
        rc = FUNC2(s2, (struct sockaddr*)&saddr, sizeof(saddr));
        FUNC9(rc==0, "bind() failed error: %d\n", FUNC0());
    }

    FUNC3(s2);
}