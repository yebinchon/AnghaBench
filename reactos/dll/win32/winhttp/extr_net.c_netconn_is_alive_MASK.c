#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  socket; } ;
typedef  TYPE_1__ netconn_t ;
typedef  int ULONG ;
typedef  char BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 int FALSE ; 
 int /*<<< orphan*/  FIONBIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int MSG_DONTWAIT ; 
 int MSG_PEEK ; 
 int TRUE ; 
 scalar_t__ WSAEWOULDBLOCK ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 

BOOL FUNC4( netconn_t *netconn )
{
#ifdef MSG_DONTWAIT
    ssize_t len;
    BYTE b;

    len = recv( netconn->socket, &b, 1, MSG_PEEK | MSG_DONTWAIT );
    return len == 1 || (len == -1 && errno == EWOULDBLOCK);
#elif defined(__MINGW32__) || defined(_MSC_VER)
    ULONG mode;
    int len;
    char b;

    mode = 1;
    if(!ioctlsocket(netconn->socket, FIONBIO, &mode))
        return FALSE;

    len = recv(netconn->socket, &b, 1, MSG_PEEK);

    mode = 0;
    if(!ioctlsocket(netconn->socket, FIONBIO, &mode))
        return FALSE;

    return len == 1 || (len == -1 && WSAGetLastError() == WSAEWOULDBLOCK);
#else
    FUNC0("not supported on this platform\n");
    return TRUE;
#endif
}