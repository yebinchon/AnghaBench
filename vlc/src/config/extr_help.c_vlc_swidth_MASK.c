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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 size_t FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const char *str)
{
    for (int total = 0;;)
    {
        uint32_t cp;
        size_t charlen = FUNC0(str, &cp);

        if (charlen == 0)
            return total;
        if (charlen == (size_t)-1)
            return -1;
        str += charlen;

        int w = FUNC1(cp);
        if (w == -1)
            return -1;
        total += w;
    }
}