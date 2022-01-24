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
typedef  int mode_t ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int S_IFBLK ; 
 int S_IFCHR ; 
 int S_IFIFO ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static int FUNC7(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        mode_t *mode = userdata;
        const char *t;

        FUNC2(mode);
        FUNC3(t = FUNC5(v));

        if (FUNC0(t, "c", "u"))
                *mode = (*mode & ~S_IFMT) | S_IFCHR;
        else if (FUNC6(t, "b"))
                *mode = (*mode & ~S_IFMT) | S_IFBLK;
        else if (FUNC6(t, "p"))
                *mode = (*mode & ~S_IFMT) | S_IFIFO;
        else
                return FUNC4(v, flags, FUNC1(EINVAL),
                                "Unknown device type: %s", t);

        return 0;
}