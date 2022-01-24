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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,intptr_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static const char* FUNC3(const char* ptr)
{
    static char buffer[2][30];
    static int index = 0;
    if (FUNC0(ptr))
        return ptr;

    index ^= 1;
    FUNC1(buffer[index], FUNC2(buffer[index]), "#%Id", (intptr_t)ptr);
    return buffer[index];
}