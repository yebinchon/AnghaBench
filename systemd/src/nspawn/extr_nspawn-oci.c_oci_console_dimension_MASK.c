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
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ USHRT_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *name, JsonVariant *variant, JsonDispatchFlags flags, void *userdata) {
        unsigned *u = userdata;
        uintmax_t k;

        FUNC1(u);

        k = FUNC3(variant);
        if (k == 0)
                return FUNC2(variant, flags, FUNC0(ERANGE),
                                "Console size field '%s' is too small.", FUNC4(name));
        if (k > USHRT_MAX) /* TIOCSWINSZ's struct winsize uses "unsigned short" for width and height */
                return FUNC2(variant, flags, FUNC0(ERANGE),
                                "Console size field '%s' is too large.", FUNC4(name));

        *u = (unsigned) k;
        return 0;
}