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
 size_t DataInAddr ; 
 int /*<<< orphan*/ * DataInBuffer ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(int dig)
{
    int i;
    int result = 0;
    for (i = 0; i < dig && FUNC1(DataInBuffer[DataInAddr]); i++)
    {
        result <<= 4;
        result |= FUNC0(DataInBuffer[DataInAddr++]);
    }
    return result;
}