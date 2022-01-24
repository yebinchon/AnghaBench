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
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 

void
FUNC2()
{
    char buffer[64];

    FUNC1(buffer, "%s", "test");
    FUNC0(buffer, "test");

    FUNC1(buffer, "%S", L"test");
    FUNC0(buffer, "test");

    FUNC1(buffer, "%ls", L"test");
    FUNC0(buffer, "test");

    FUNC1(buffer, "%ws", L"test");
    FUNC0(buffer, "test");

    FUNC1(buffer, "%hs", "test");
    FUNC0(buffer, "test");

    FUNC1(buffer, "%hS", "test");
    FUNC0(buffer, "test");

    FUNC1(buffer, "%7s", "test");
    FUNC0(buffer, "   test");

    FUNC1(buffer, "%07s", "test");
    FUNC0(buffer, "000test");

    FUNC1(buffer, "%.3s", "test");
    FUNC0(buffer, "tes");

    FUNC1(buffer, "%+7.3s", "test");
    FUNC0(buffer, "    tes");

    FUNC1(buffer, "%+4.0s", "test");
    FUNC0(buffer, "    ");


}