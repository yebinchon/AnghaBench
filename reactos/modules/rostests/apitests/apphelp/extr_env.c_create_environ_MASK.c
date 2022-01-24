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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static void FUNC2(const char* layers[], size_t num)
{
    char buf[256] = { 0 };
    size_t n;
    for (n = 0; n < num; ++n)
    {
        if (n)
            FUNC1(buf, " ");
        FUNC1(buf, layers[n]);
    }
    FUNC0("__COMPAT_LAYER", buf);
}