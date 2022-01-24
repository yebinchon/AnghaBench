#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WORD ;
struct TYPE_6__ {int counter; scalar_t__ random_reg1; void* height; void* width; scalar_t__ msgindex; } ;
typedef  TYPE_1__ MATRIX_MESSAGE ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  MAXMSG_HEIGHT ; 
 int /*<<< orphan*/  MAXMSG_WIDTH ; 
 int MSGSPEED_MIN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  g_fFontBold ; 
 int /*<<< orphan*/  g_nFontSize ; 
 int /*<<< orphan*/  g_szFontName ; 
 int /*<<< orphan*/ * g_szMessages ; 
 TYPE_1__* FUNC5 (int) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 

MATRIX_MESSAGE *FUNC7(HWND hwnd, int width, int height)
{
	MATRIX_MESSAGE *msg;

	if((msg = FUNC5(sizeof(MATRIX_MESSAGE))) == 0)
		return 0;

	FUNC0(msg);

	msg->msgindex = 0;
	msg->width    = FUNC6(width, MAXMSG_WIDTH);
	msg->height   = FUNC6(height, MAXMSG_HEIGHT);
	msg->counter  = -(int)(FUNC4() % MSGSPEED_MIN + MSGSPEED_MIN);

	msg->random_reg1 = (WORD)FUNC1();

	FUNC3(hwnd, g_szFontName, g_nFontSize, g_fFontBold);

	FUNC2(msg, 0, g_szMessages[0]);

	return msg;
}