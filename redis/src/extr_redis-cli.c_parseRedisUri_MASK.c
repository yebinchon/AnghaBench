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
struct TYPE_2__ {void* dbnum; int /*<<< orphan*/  hostip; void* hostport; int /*<<< orphan*/  auth; } ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 TYPE_1__ config ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char const*,char) ; 
 int FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char const*,char const*,int) ; 

__attribute__((used)) static void FUNC8(const char *uri) {

    const char *scheme = "redis://";
    const char *curr = uri;
    const char *end = uri + FUNC6(uri);
    const char *userinfo, *username, *port, *host, *path;

    /* URI must start with a valid scheme. */
    if (FUNC7(scheme, curr, FUNC6(scheme))) {
        FUNC2(stderr,"Invalid URI scheme\n");
        FUNC1(1);
    }
    curr += FUNC6(scheme);
    if (curr == end) return;

    /* Extract user info. */
    if ((userinfo = FUNC5(curr,'@'))) {
        if ((username = FUNC5(curr, ':')) && username < userinfo) {
            /* If provided, username is ignored. */
            curr = username + 1;
        }

        config.auth = FUNC3(curr, userinfo - curr);
        curr = userinfo + 1;
    }
    if (curr == end) return;

    /* Extract host and port. */
    path = FUNC5(curr, '/');
    if (*curr != '/') {
        host = path ? path - 1 : end;
        if ((port = FUNC5(curr, ':'))) {
            config.hostport = FUNC0(port + 1);
            host = port - 1;
        }
        config.hostip = FUNC4(curr, host - curr + 1);
    }
    curr = path ? path + 1 : end;
    if (curr == end) return;

    /* Extract database number. */
    config.dbnum = FUNC0(curr);
}