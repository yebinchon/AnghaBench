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
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    char buf[16];

    FUNC2(buf, "a");
    FUNC1(!FUNC0(buf), "_mktemp(\"a\") != NULL\n");

    FUNC2(buf, "testXXXXX");
    FUNC1(!FUNC0(buf), "_mktemp(\"testXXXXX\") != NULL\n");

    FUNC2(buf, "testXXXXXX");
    FUNC1(FUNC0(buf) != NULL, "_mktemp(\"testXXXXXX\") == NULL\n");

    FUNC2(buf, "testXXXXXXa");
    FUNC1(!FUNC0(buf), "_mktemp(\"testXXXXXXa\") != NULL\n");

    FUNC2(buf, "**XXXXXX");
    FUNC1(FUNC0(buf) != NULL, "_mktemp(\"**XXXXXX\") == NULL\n");
}