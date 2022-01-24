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
 int /*<<< orphan*/  FUNC1 (char) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int FUNC7(int argc, char **argv)
{
    if (argc != 2)
        return FUNC4("usage: %s arm_pe_file\n", argv[0]), 1;
    if (FUNC3(argv[1]))
        return 2;
    if (FUNC5())
        return 3;
    FUNC1('0');
    if (FUNC2())
        return 4;
    FUNC1('1');
    if (FUNC6())
        return 5;
    FUNC1('2');

    FUNC0();
    FUNC4("ok.\n");
    return 0;
}