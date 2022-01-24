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
typedef  int /*<<< orphan*/  HPEN ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float fScale ; 
 scalar_t__ fw ; 
 scalar_t__ mw ; 
 int /*<<< orphan*/ * section_vpos ; 

void FUNC6(HDC hdc)
{
	int i;
	HPEN hp = FUNC1(0, (fScale < 1.5f) ? 2 : 3, FUNC4(0, 0, 0));
	FUNC5(hdc, hp);
	for (i = 0; i < FUNC0(section_vpos); i++) {
		FUNC3(hdc, mw + 10, section_vpos[i], NULL);
		FUNC2(hdc, mw + fw, section_vpos[i]);
	}
}