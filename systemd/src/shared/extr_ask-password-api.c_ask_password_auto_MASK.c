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
typedef  int /*<<< orphan*/  usec_t ;
typedef  int AskPasswordFlags ;

/* Variables and functions */
 int ASK_PASSWORD_ACCEPT_CACHED ; 
 int ASK_PASSWORD_NO_AGENT ; 
 int ASK_PASSWORD_NO_TTY ; 
 int ENOKEY ; 
 int EUNATCH ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int FUNC0 (char const*,char const*,char const*,char const*,int /*<<< orphan*/ ,int,char***) ; 
 int FUNC1 (char const*,int,char***) ; 
 int FUNC2 (int,char const*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char***) ; 
 int /*<<< orphan*/  FUNC3 (char***) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(
                const char *message,
                const char *icon,
                const char *id,
                const char *keyname,
                usec_t until,
                AskPasswordFlags flags,
                char ***ret) {

        int r;

        FUNC3(ret);

        if ((flags & ASK_PASSWORD_ACCEPT_CACHED) &&
            keyname &&
            ((flags & ASK_PASSWORD_NO_TTY) || !FUNC4(STDIN_FILENO)) &&
            (flags & ASK_PASSWORD_NO_AGENT)) {
                r = FUNC1(keyname, flags, ret);
                if (r != -ENOKEY)
                        return r;
        }

        if (!(flags & ASK_PASSWORD_NO_TTY) && FUNC4(STDIN_FILENO))
                return FUNC2(-1, message, keyname, until, flags, NULL, ret);

        if (!(flags & ASK_PASSWORD_NO_AGENT))
                return FUNC0(message, icon, id, keyname, until, flags, ret);

        return -EUNATCH;
}