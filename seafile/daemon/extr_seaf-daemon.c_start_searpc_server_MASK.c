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
struct TYPE_2__ {char* rpc_socket_path; int /*<<< orphan*/  seaf_dir; } ;
typedef  int /*<<< orphan*/  SearpcNamedPipeServer ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  SEAFILE_SOCKET_NAME ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__* seaf ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10 ()
{
    FUNC6 ();

#ifdef WIN32
    DWORD bufCharCount = 32767;
    char userNameBuf[bufCharCount];
    if (GetUserName(userNameBuf, &bufCharCount) == 0) {
        seaf_warning ("Failed to get user name, GLE=%lu, required size is %lu\n",
                      GetLastError(), bufCharCount);
        return -1;
    }

    char *path = g_strdup_printf("\\\\.\\pipe\\seafile_%s", b64encode(userNameBuf));
#else
    char *path = FUNC3 (seaf->seaf_dir, SEAFILE_SOCKET_NAME, NULL);
#endif

    SearpcNamedPipeServer *server = FUNC8 (path);
    if (!server) {
        FUNC7 ("Failed to create named pipe server.\n");
        FUNC4 (path);
        return -1;
    }

    seaf->rpc_socket_path = path;

    return FUNC9 (server);
}