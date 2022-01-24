#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ colnr_T ;
struct TYPE_3__ {scalar_t__ col; } ;
struct TYPE_4__ {TYPE_1__ w_cursor; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_CURSOR ; 
 int F_HE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRC_EDT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int _HE_ ; 
 TYPE_2__* curwin ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 ()
{
    int	tempc;

    tempc = FUNC3();

    if (curwin->w_cursor.col + 1 < (colnr_T)FUNC1(FUNC5()))
    {
	FUNC4();

	if ((tempc == F_HE) && (FUNC0(SRC_EDT, AT_CURSOR)))
	{
	    tempc = _HE_;

	    FUNC2();

	    FUNC6(tempc);
	    return;
	}

	FUNC2();
    }

    if ((tempc = FUNC7(tempc)) != 0)
	FUNC6(tempc);
}