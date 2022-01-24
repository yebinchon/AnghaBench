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
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ composing_hangul ; 
 int /*<<< orphan*/  composing_hangul_buffer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

void
FUNC7()
{
    if (FUNC1())
    {
	FUNC2(0);
	if (composing_hangul)
	{
	    FUNC4(composing_hangul_buffer, 2);
	    composing_hangul = 0;
	}
    }
    else
	FUNC2(1);

    if (FUNC6())
    {
	FUNC5();
	FUNC3();
    }

    FUNC0(TRUE, FALSE);
}