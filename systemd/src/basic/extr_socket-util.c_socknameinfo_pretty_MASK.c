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
union sockaddr_union {int /*<<< orphan*/  sa; } ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  host ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IDN_FLAGS ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,char**) ; 
 char* FUNC4 (char*) ; 

int FUNC5(union sockaddr_union *sa, socklen_t salen, char **_ret) {
        int r;
        char host[NI_MAXHOST], *ret;

        FUNC0(_ret);

        r = FUNC1(&sa->sa, salen, host, sizeof(host), NULL, 0, IDN_FLAGS);
        if (r != 0) {
                int saved_errno = errno;

                r = FUNC3(&sa->sa, salen, true, true, &ret);
                if (r < 0)
                        return r;

                FUNC2(saved_errno, "getnameinfo(%s) failed: %m", ret);
        } else {
                ret = FUNC4(host);
                if (!ret)
                        return -ENOMEM;
        }

        *_ret = ret;
        return 0;
}