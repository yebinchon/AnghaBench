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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 
 char* FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6 (const char *in, const char *out)
{
    char *buf;

    FUNC2 ("\"%s\" -> \"%s\" ?\n", in, out);
    buf = FUNC5 (in);

    if (buf == NULL)
    {
        FUNC3(" ERROR: got NULL");
        FUNC0(2);
    }

    if (FUNC4 (buf, out))
    {
        FUNC2 (" ERROR: got \"%s\"\n", buf);
        FUNC0 (2);
    }
    FUNC1 (buf);
}