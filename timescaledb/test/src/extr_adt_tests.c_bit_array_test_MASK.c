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
typedef  int /*<<< orphan*/  BitArrayIterator ;
typedef  int /*<<< orphan*/  BitArray ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void)
{
	BitArray bits;
	BitArrayIterator iter;
	int i;
	FUNC2(&bits);

	for (i = 0; i < 65; i++)
		FUNC1(&bits, i, i);

	FUNC1(&bits, 0, 0);
	FUNC1(&bits, 0, 0);
	FUNC1(&bits, 64, 0x9069060909009090);
	FUNC1(&bits, 1, 0);
	FUNC1(&bits, 64, ~0x9069060909009090);
	FUNC1(&bits, 1, 1);

	FUNC5(&iter, &bits);
	for (i = 0; i < 65; i++)
		FUNC0(FUNC3(&iter, i), i);

	FUNC0(FUNC3(&iter, 0), 0);
	FUNC0(FUNC3(&iter, 0), 0);
	FUNC0(FUNC3(&iter, 64), 0x9069060909009090);
	FUNC0(FUNC3(&iter, 1), 0);
	FUNC0(FUNC3(&iter, 64), ~0x9069060909009090);
	FUNC0(FUNC3(&iter, 1), 1);

	FUNC6(&iter, &bits);
	FUNC0(FUNC4(&iter, 1), 1);
	FUNC0(FUNC4(&iter, 64), ~0x9069060909009090);
	FUNC0(FUNC4(&iter, 1), 0);
	FUNC0(FUNC4(&iter, 64), 0x9069060909009090);
	FUNC0(FUNC4(&iter, 0), 0);
	FUNC0(FUNC4(&iter, 0), 0);
	for (i = 64; i >= 0; i--)
		FUNC0(FUNC4(&iter, i), i);
}