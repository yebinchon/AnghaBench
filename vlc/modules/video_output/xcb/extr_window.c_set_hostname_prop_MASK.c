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
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  XA_WM_CLIENT_MACHINE ; 
 long _POSIX_HOST_NAME_MAX ; 
 int /*<<< orphan*/  _SC_HOST_NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,long) ; 
 char* FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
void FUNC5 (xcb_connection_t *conn, xcb_window_t window)
{
    char* hostname;
    long host_name_max = FUNC4 (_SC_HOST_NAME_MAX);
    if (host_name_max <= 0) host_name_max = _POSIX_HOST_NAME_MAX;
    hostname = FUNC2 (host_name_max);
    if(!hostname) return;

    if (FUNC1 (hostname, host_name_max) == 0)
    {
        hostname[host_name_max - 1] = '\0';
        FUNC3 (conn, window, XA_WM_CLIENT_MACHINE, hostname);
    }
    FUNC0(hostname);
}