#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ count; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* rtfHashTable ; 
 int /*<<< orphan*/  rtfKey ; 

void FUNC2(void)
{
	unsigned int i;

	for (i = 0; i < FUNC0(rtfKey) * 2; i++)
	{
		FUNC1( rtfHashTable[i].value );
		rtfHashTable[i].value = NULL;
		rtfHashTable[i].count = 0;
	}
}