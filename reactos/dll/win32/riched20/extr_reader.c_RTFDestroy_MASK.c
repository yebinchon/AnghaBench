#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* parent; } ;
struct TYPE_6__ {TYPE_2__* tableDef; TYPE_2__* cpOutputBuffer; TYPE_2__* pushedTextBuf; TYPE_2__* rtfTextBuf; } ;
typedef  TYPE_1__ RTF_Info ;
typedef  TYPE_2__ RTFTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

void
FUNC2(RTF_Info *info)
{
	if (info->rtfTextBuf)
	{
		FUNC1(info->rtfTextBuf);
		FUNC1(info->pushedTextBuf);
	}
	FUNC0(info);
	FUNC1(info->cpOutputBuffer);
        while (info->tableDef)
        {
                RTFTable *tableDef = info->tableDef;
                info->tableDef = tableDef->parent;
                FUNC1(tableDef);
        }
}