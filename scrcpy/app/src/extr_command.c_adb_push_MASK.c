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
typedef  int /*<<< orphan*/  process_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const*) ; 
 int /*<<< orphan*/  PROCESS_NONE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const* const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*) ; 

process_t
FUNC4(const char *serial, const char *local, const char *remote) {
#ifdef __WINDOWS__
    // Windows will parse the string, so the paths must be quoted
    // (see sys/win/command.c)
    local = strquote(local);
    if (!local) {
        return PROCESS_NONE;
    }
    remote = strquote(remote);
    if (!remote) {
        SDL_free((void *) local);
        return PROCESS_NONE;
    }
#endif

    const char *const adb_cmd[] = {"push", local, remote};
    process_t proc = FUNC2(serial, adb_cmd, FUNC0(adb_cmd));

#ifdef __WINDOWS__
    SDL_free((void *) remote);
    SDL_free((void *) local);
#endif

    return proc;
}