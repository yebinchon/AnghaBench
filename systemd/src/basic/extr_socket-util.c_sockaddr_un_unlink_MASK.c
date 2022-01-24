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
struct sockaddr_un {scalar_t__ sun_family; scalar_t__* sun_path; } ;

/* Variables and functions */
 scalar_t__ AF_UNIX ; 
 int EPROTOTYPE ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un const*) ; 
 int errno ; 
 char* FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 char* FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

int FUNC4(const struct sockaddr_un *sa) {
        const char *p, * nul;

        FUNC0(sa);

        if (sa->sun_family != AF_UNIX)
                return -EPROTOTYPE;

        if (sa->sun_path[0] == 0) /* Nothing to do for abstract sockets */
                return 0;

        /* The path in .sun_path is not necessarily NUL terminated. Let's fix that. */
        nul = FUNC1(sa->sun_path, 0, sizeof(sa->sun_path));
        if (nul)
                p = sa->sun_path;
        else
                p = FUNC2(sa->sun_path, sizeof(sa->sun_path));

        if (FUNC3(p) < 0)
                return -errno;

        return 1;
}