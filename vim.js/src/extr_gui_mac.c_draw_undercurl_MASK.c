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
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  specialColor ; 

__attribute__((used)) static void
FUNC5(int flags, int row, int col, int cells)
{
    int			x;
    int			offset;
    const static int	val[8] = {1, 0, 0, 0, 1, 2, 2, 2 };
    int			y = FUNC1(row + 1) - 1;

    FUNC4(&specialColor);

    offset = val[FUNC0(col) % 8];
    FUNC3(FUNC0(col), y - offset);

    for (x = FUNC0(col); x < FUNC0(col + cells); ++x)
    {
	offset = val[x % 8];
	FUNC2(x, y - offset);
    }
}