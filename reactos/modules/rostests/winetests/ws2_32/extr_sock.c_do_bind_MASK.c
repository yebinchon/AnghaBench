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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int BIND_SLEEP ; 
 int BIND_TRIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int WSAEADDRINUSE ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5 ( SOCKET s, struct sockaddr* addr, int addrlen )
{
    int err, wsaerr = 0, n_try = BIND_TRIES;

    while ( ( err = FUNC2 ( s, addr, addrlen ) ) != 0 &&
            ( wsaerr = FUNC1 () ) == WSAEADDRINUSE &&
            n_try-- >= 0)
    {
        FUNC4 ( "address in use, waiting ...\n" );
        FUNC0 ( 1000 * BIND_SLEEP );
    }
    FUNC3 ( err == 0, "failed to bind: %d\n", wsaerr );
}