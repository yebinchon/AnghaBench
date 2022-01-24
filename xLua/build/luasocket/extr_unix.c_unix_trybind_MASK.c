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
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_family; int /*<<< orphan*/  sun_path; } ;
typedef  TYPE_1__* p_unix ;
typedef  int /*<<< orphan*/  local ;
struct TYPE_3__ {int /*<<< orphan*/  sock; } ;
typedef  int /*<<< orphan*/  SA ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int IO_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char const* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static const char *FUNC6(p_unix un, const char *path) {
    struct sockaddr_un local;
    size_t len = FUNC5(path);
    int err;
    if (len >= sizeof(local.sun_path)) return "path too long";
    FUNC0(&local, 0, sizeof(local));
    FUNC4(local.sun_path, path);
    local.sun_family = AF_UNIX;
#ifdef UNIX_HAS_SUN_LEN
    local.sun_len = sizeof(local.sun_family) + sizeof(local.sun_len) 
        + len + 1;
    err = socket_bind(&un->sock, (SA *) &local, local.sun_len);

#else 
    err = FUNC1(&un->sock, (SA *) &local, 
            sizeof(local.sun_family) + len);
#endif
    if (err != IO_DONE) FUNC2(&un->sock);
    return FUNC3(err); 
}