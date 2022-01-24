#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int count; TYPE_1__** value; } ;
struct TYPE_9__ {int rtfKHash; int /*<<< orphan*/ * rtfKStr; } ;
typedef  TYPE_1__ RTFKey ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__** FUNC2 (int) ; 
 TYPE_1__** FUNC3 (TYPE_1__**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* rtfHashTable ; 
 TYPE_1__* rtfKey ; 

void FUNC5(void)
{
	RTFKey	*rp;

	FUNC4(rtfHashTable, 0, sizeof rtfHashTable);
	for (rp = rtfKey; rp->rtfKStr != NULL; rp++)
	{
		int index;

		rp->rtfKHash = FUNC1 (rp->rtfKStr);
		index = rp->rtfKHash % (FUNC0(rtfKey) * 2);
		if (!rtfHashTable[index].count)
			rtfHashTable[index].value = FUNC2(sizeof(RTFKey *));
		else
			rtfHashTable[index].value = FUNC3(rtfHashTable[index].value, sizeof(RTFKey *) * (rtfHashTable[index].count + 1));
		rtfHashTable[index].value[rtfHashTable[index].count++] = rp;
	}
}