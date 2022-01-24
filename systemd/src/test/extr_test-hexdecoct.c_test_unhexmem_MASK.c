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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPIPE ; 
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void) {
        const char *hex = "efa2149213";
        const char *hex_space = "  e f   a\n 2\r  14\n\r\t9\t2 \n1\r3 \r\r\t";
        const char *hex_invalid = "efa214921o";

        FUNC1(NULL, 0, 0);
        FUNC1("", 0, 0);
        FUNC1("", (size_t) -1, 0);
        FUNC1("   \n \t\r   \t\t \n\n\n", (size_t) -1, 0);
        FUNC1(hex_invalid, FUNC0(hex_invalid), -EINVAL);
        FUNC1(hex_invalid, (size_t) - 1, -EINVAL);
        FUNC1(hex, FUNC0(hex) - 1, -EPIPE);
        FUNC1(hex, FUNC0(hex), 0);
        FUNC1(hex, (size_t) -1, 0);
        FUNC1(hex_space, FUNC0(hex_space), 0);
        FUNC1(hex_space, (size_t) -1, 0);
}