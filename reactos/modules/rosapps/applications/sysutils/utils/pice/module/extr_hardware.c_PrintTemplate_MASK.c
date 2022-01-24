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
typedef  int USHORT ;
struct TYPE_2__ {int y; int cy; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_CAPTION ; 
 int /*<<< orphan*/  COLOR_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t DATA_WINDOW ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t OUTPUT_WINDOW ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 size_t SOURCE_WINDOW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* wWindow ; 

void FUNC9(void)
{
    USHORT i,j;

	FUNC1();

    FUNC5();

    for(j=0;j<4;j++)
    {
	    for(i=wWindow[j].y;i<(wWindow[j].y+wWindow[j].cy);i++)
        {
		    FUNC0(i);
        }
    }

    FUNC3();

	FUNC7(COLOR_TEXT);
	FUNC6(COLOR_CAPTION);

	FUNC0(wWindow[DATA_WINDOW].y-1);
	FUNC0(wWindow[SOURCE_WINDOW].y-1);
	FUNC0(wWindow[OUTPUT_WINDOW].y-1);

    FUNC5();

	FUNC8();
    FUNC4(TRUE);

	FUNC2();
}