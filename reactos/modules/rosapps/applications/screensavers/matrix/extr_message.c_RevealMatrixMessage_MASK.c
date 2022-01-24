#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int random_reg1; int /*<<< orphan*/ ** message; } ;
typedef  TYPE_1__ MATRIX_MESSAGE ;

/* Variables and functions */
 int /*<<< orphan*/  GLYPH_REDRAW ; 
 int FUNC0 (int) ; 

void FUNC1(MATRIX_MESSAGE *msg, int amount)
{
	while(amount--)
	{
		int pos;

		msg->random_reg1 = FUNC0(msg->random_reg1);
		pos = msg->random_reg1 & 0xffff;

		msg->message[pos / 256][pos % 256] |= GLYPH_REDRAW;
	}
}