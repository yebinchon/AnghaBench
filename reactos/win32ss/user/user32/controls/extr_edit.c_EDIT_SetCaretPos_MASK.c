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
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  EDITSTATE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (short,short) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,short,short) ; 

__attribute__((used)) static void FUNC5(EDITSTATE *es, INT pos,
			     BOOL after_wrap)
{
	LRESULT res = FUNC0(es, pos, after_wrap);
	FUNC4("%d - %dx%d\n", pos, (short)FUNC2(res), (short)FUNC1(res));
	FUNC3((short)FUNC2(res), (short)FUNC1(res));
}