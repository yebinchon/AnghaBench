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
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

void
FUNC2()
{
    char buffer[64];

    FUNC1(buffer, "%c", 0x3031);
    FUNC0(buffer, "1");

    FUNC1(buffer, "%hc", 0x3031);
    FUNC0(buffer, "1");

    FUNC1(buffer, "%wc", 0x3031);
    FUNC0(buffer, "?");

    FUNC1(buffer, "%lc", 0x3031);
    FUNC0(buffer, "?");

    FUNC1(buffer, "%Lc", 0x3031);
    FUNC0(buffer, "1");

    FUNC1(buffer, "%Ic", 0x3031);
    FUNC0(buffer, "Ic");

    FUNC1(buffer, "%Iwc", 0x3031);
    FUNC0(buffer, "Iwc");

    FUNC1(buffer, "%I32c", 0x3031);
    FUNC0(buffer, "1");

    FUNC1(buffer, "%I64c", 0x3031);
    FUNC0(buffer, "1");

    FUNC1(buffer, "%4c", 0x3031);
    FUNC0(buffer, "   1");

    FUNC1(buffer, "%04c", 0x3031);
    FUNC0(buffer, "0001");

    FUNC1(buffer, "%+4c", 0x3031);
    FUNC0(buffer, "   1");

}