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
typedef  int /*<<< orphan*/  title ;
typedef  int /*<<< orphan*/  LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_CAPTION ; 
 int /*<<< orphan*/  COLOR_TEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GLOBAL_SCREEN_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(void)
{
    const char title[]=" PrivateICE system level debugger (REACTOS) ";

    FUNC4(COLOR_TEXT);
	FUNC3(COLOR_CAPTION);

	FUNC0(0);
	FUNC1((LPSTR)title,
		   (GLOBAL_SCREEN_WIDTH-sizeof(title))/2,
           0);

    FUNC2();
}