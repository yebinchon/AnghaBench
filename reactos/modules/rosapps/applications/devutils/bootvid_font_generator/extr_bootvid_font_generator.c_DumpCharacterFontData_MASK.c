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
typedef  int DWORD ;

/* Variables and functions */
 int HEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC1(DWORD BmpBits[])
{
    static int iBegin = 0;
    int i;

    FUNC0(stdout, "    ");

    for (i = 0; i < HEIGHT; i++)
        FUNC0(stdout, "0x%02X, ", BmpBits[i]);

    FUNC0(stdout, " // %d\n", iBegin);
    iBegin += HEIGHT;
}