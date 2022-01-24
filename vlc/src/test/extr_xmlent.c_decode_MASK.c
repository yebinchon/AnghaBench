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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,...) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6 (const char *in, const char *out)
{
    char buf[FUNC4 (in) + 1];

    FUNC1 ("\"%s\" -> \"%s\" ?\n", in, out);
    FUNC3 (buf, in);
    FUNC5 (buf);

    if (FUNC2 (buf, out))
    {
        FUNC1 (" ERROR: got \"%s\"\n", buf);
        FUNC0 (2);
    }
}