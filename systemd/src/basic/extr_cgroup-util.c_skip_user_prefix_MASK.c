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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 char const* FUNC1 (char const*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char const*) ; 

__attribute__((used)) static const char *FUNC4(const char *path) {
        const char *e, *t;

        FUNC0(path);

        /* Skip slices, if there are any */
        e = FUNC2(path);

        /* Skip the user manager, if it's in the path now... */
        t = FUNC3(e);
        if (t)
                return t;

        /* Alternatively skip the user session if it is in the path... */
        return FUNC1(e);
}