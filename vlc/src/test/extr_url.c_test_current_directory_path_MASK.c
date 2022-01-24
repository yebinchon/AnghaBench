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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char**,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  make_URI_def ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char*) ; 

__attribute__((used)) static inline void FUNC4 (const char *in, const char *cwd, const char *out)
{
    char *expected_result;
    int val = FUNC1 (&expected_result, "file://%s/%s", cwd, out);
    if (val < 0)
        FUNC0();

    FUNC3 (make_URI_def, in, expected_result);
    FUNC2(expected_result);
}