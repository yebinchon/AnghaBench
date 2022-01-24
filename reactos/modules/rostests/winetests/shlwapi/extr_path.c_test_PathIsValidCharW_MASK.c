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
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * SHELL_charclass ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,int) ; 
 int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
    BOOL ret;
    unsigned int c;

    if (!&pPathIsValidCharW)
    {
        FUNC2("PathIsValidCharW isn't available\n");
        return;
    }

    for (c = 0; c < 0x7f; c++)
    {
        ret = FUNC1( c, ~0U );
        FUNC0 ( ret || !SHELL_charclass[c], "PathIsValidCharW failed: 0x%02x got 0x%08x\n", c, ret );
    }

    for (c = 0x007f; c <= 0xffff; c++)
    {
        ret = FUNC1( c, ~0U );
        FUNC0 ( ret, "PathIsValidCharW failed: 0x%02x got 0x%08x\n", c, ret );
    }
}