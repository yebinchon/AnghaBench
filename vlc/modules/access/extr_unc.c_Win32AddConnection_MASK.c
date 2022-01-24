#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  stream_t ;
typedef  int /*<<< orphan*/  remote_name ;
typedef  int /*<<< orphan*/  net_resource ;
struct TYPE_4__ {int /*<<< orphan*/ * lpRemoteName; int /*<<< orphan*/  dwType; } ;
typedef  TYPE_1__ NETRESOURCE ;

/* Variables and functions */
#define  ERROR_ALREADY_ASSIGNED 130 
#define  ERROR_DEVICE_ALREADY_REMEMBERED 129 
 int MAX_PATH ; 
#define  NO_ERROR 128 
 int /*<<< orphan*/  RESOURCETYPE_DISK ; 
 int /*<<< orphan*/ * FUNC0 (char const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*,char const*) ; 
 char* FUNC6 (char*,char) ; 

__attribute__((used)) static void FUNC7(stream_t *access, const char *server,
                               const char *share, const char *user,
                               const char *pwd)
{
    NETRESOURCE net_resource;
    char remote_name[MAX_PATH];

    FUNC3(&net_resource, 0, sizeof (net_resource));
    net_resource.dwType = RESOURCETYPE_DISK;

    FUNC5(remote_name, sizeof (remote_name), "\\\\%s\\%s", server,
             (share != NULL) ? share + 1 /* skip leading '/' */: "");

    /* remove trailings '/' */
    char *delim = FUNC6(remote_name, '/');
    if (delim != NULL)
        *delim = '\0';

    const char *msg;
    net_resource.lpRemoteName = FUNC0(remote_name);

    wchar_t *wpwd  = pwd  ? FUNC0(pwd)  : NULL;
    wchar_t *wuser = user ? FUNC0(user) : NULL;

    switch (FUNC1(&net_resource, wpwd, wuser, 0))
    {
        case NO_ERROR:
            msg = "connected to %s";
            break;
        case ERROR_ALREADY_ASSIGNED:
        case ERROR_DEVICE_ALREADY_REMEMBERED:
            msg = "already connected to %s";
            break;
        default:
            msg = "failed to connect to %s";
    }
    FUNC2(net_resource.lpRemoteName);
    FUNC2(wpwd);
    FUNC2(wuser);
    FUNC4(access, msg, remote_name);
}