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

    FUNC1(buffer, "%x", 0x1234abcd);
    FUNC0(buffer, "1234abcd");

    FUNC1(buffer, "%X", 0x1234abcd);
    FUNC0(buffer, "1234ABCD");

    FUNC1(buffer, "%#x", 0x1234abcd);
    FUNC0(buffer, "0x1234abcd");

    FUNC1(buffer, "%#X", 0x1234abcd);
    FUNC0(buffer, "0X1234ABCD");

    /* "0x" is contained in the field length */
    FUNC1(buffer, "%#012X", 0x1234abcd);
    FUNC0(buffer, "0X001234ABCD");

    FUNC1(buffer, "%llx", 0x1234abcd5678ULL);
    FUNC0(buffer, "abcd5678");

    FUNC1(buffer, "%I64x", 0x1234abcd5678ULL);
    FUNC0(buffer, "1234abcd5678");

}