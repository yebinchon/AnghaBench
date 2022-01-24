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
typedef  scalar_t__ cmsBool ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ TotalMemory ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(cmsBool ok)
{
    if (TotalMemory > 0)
        FUNC1("Ok, but %s are left!\n", FUNC0(TotalMemory));
    else {
        if (ok) FUNC1("Ok.\n");
    }
}