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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 

__attribute__((used)) static
char* FUNC1(const char* txt)
{
    static char Buffer[2048];
    char* pt;

    FUNC0(Buffer, txt, 2047);
    Buffer[2047] = 0;
    for (pt = Buffer; *pt; pt++)
            if (*pt == '\n' || *pt == '\r') *pt = ' ';

    return Buffer;

}