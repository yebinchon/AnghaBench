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
typedef  int /*<<< orphan*/  luaL_Buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static int FUNC3(int c, int last, const char *marker, 
        luaL_Buffer *buffer)
{
    if (FUNC0(c)) {
        if (FUNC0(last)) {
            if (c == last) FUNC2(buffer, marker);
            return 0;
        } else {
            FUNC2(buffer, marker);
            return c;
        }
    } else {
        FUNC1(buffer, (char) c);
        return 0;
    }
}