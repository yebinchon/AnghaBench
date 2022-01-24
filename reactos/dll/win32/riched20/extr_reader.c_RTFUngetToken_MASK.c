#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pushedClass; scalar_t__ rtfClass; size_t stackTop; int /*<<< orphan*/  style; TYPE_1__* stack; int /*<<< orphan*/  rtfTextBuf; int /*<<< orphan*/  pushedTextBuf; int /*<<< orphan*/  rtfParam; int /*<<< orphan*/  pushedParam; int /*<<< orphan*/  rtfMinor; int /*<<< orphan*/  pushedMinor; int /*<<< orphan*/  rtfMajor; int /*<<< orphan*/  pushedMajor; } ;
struct TYPE_5__ {int /*<<< orphan*/  style; } ;
typedef  TYPE_2__ RTF_Info ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rtfEndGroup ; 
 int /*<<< orphan*/  rtfGroup ; 

__attribute__((used)) static void FUNC4(RTF_Info *info)
{
	if (info->pushedClass >= 0)	/* there's already an ungotten token */
		FUNC0 ("cannot unget two tokens\n");
	if (info->rtfClass < 0)
		FUNC0 ("no token to unget\n");
	info->pushedClass = info->rtfClass;
	info->pushedMajor = info->rtfMajor;
	info->pushedMinor = info->rtfMinor;
	info->pushedParam = info->rtfParam;
	FUNC3 (info->pushedTextBuf, info->rtfTextBuf);
	/* The read hook decrements stackTop on rtfEndGroup, so
	 * increment the value to compensate for it being decremented
	 * twice due to the RTFUngetToken. */
	if(FUNC2 (info, rtfGroup, rtfEndGroup))
	{
		info->stack[info->stackTop].style = info->style;
		FUNC1(info->style);
		info->stackTop++;
	}
}