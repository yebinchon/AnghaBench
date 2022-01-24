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
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ INADDR_NONE ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  R_ERROR ; 
 int /*<<< orphan*/  R_STATUS ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char const* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct sockaddr*,int) ; 
 struct hostent* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SOCKET
FUNC11 (const char *server)
{
    WSADATA wsad;
    struct sockaddr_in sa;
    SOCKET s;

    FUNC9 (R_STATUS, "Opening HTTP connection to %s", server);
    if (FUNC3 (FUNC0 (2,2), &wsad)) return INVALID_SOCKET;

    sa.sin_family = AF_INET;
    sa.sin_port = FUNC7 (80);
    sa.sin_addr.s_addr = FUNC8 (server);
    if (sa.sin_addr.s_addr == INADDR_NONE) {
        struct hostent *host = FUNC6 (server);
        if (!host) {
            FUNC9 (R_ERROR, "Hostname lookup failed for %s", server);
            goto failure;
        }
        sa.sin_addr.s_addr = ((struct in_addr *)host->h_addr)->s_addr;
    }
    s = FUNC10 (AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (s == INVALID_SOCKET) {
        FUNC9 (R_ERROR, "Can't open network socket: %d",
                FUNC2 ());
        goto failure;
    }
    if (!FUNC5 (s, (struct sockaddr*)&sa, sizeof (struct sockaddr_in)))
        return s;

    FUNC9 (R_ERROR, "Can't connect: %d", FUNC2 ());
    FUNC4 (s);
 failure:
    FUNC1 ();
    return INVALID_SOCKET;
}