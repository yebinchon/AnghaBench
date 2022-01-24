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
struct vatpic {int* elc; struct atpic* atpic; } ;
struct atpic {int* acnt; int request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpic*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vatpic*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vatpic*,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vatpic*) ; 

__attribute__((used)) static void
FUNC5(struct vatpic *vatpic, int pin, bool newstate)
{
	struct atpic *atpic;
	int oldcnt, newcnt;
	bool level;

	FUNC0(pin >= 0 && pin < 16,
	    ("vatpic_set_pinstate: invalid pin number %d", pin));

	atpic = &vatpic->atpic[pin >> 3];

	oldcnt = atpic->acnt[pin & 0x7];
	if (newstate)
		atpic->acnt[pin & 0x7]++;
	else
		atpic->acnt[pin & 0x7]--;
	newcnt = atpic->acnt[pin & 0x7];

	if (newcnt < 0) {
		FUNC2(vatpic, "atpic pin%d: bad acnt %d", pin, newcnt);
	}

	level = ((vatpic->elc[pin >> 3] & (1 << (pin & 0x7))) != 0);

	if ((oldcnt == 0 && newcnt == 1) || (newcnt > 0 && level == true)) {
		/* rising edge or level */
		FUNC1(vatpic, "atpic pin%d: asserted", pin);
		atpic->request |= (1 << (pin & 0x7));
	} else if (oldcnt == 1 && newcnt == 0) {
		/* falling edge */
		FUNC1(vatpic, "atpic pin%d: deasserted", pin);
		if (level)
			atpic->request &= ~(1 << (pin & 0x7));
	} else {
		FUNC3(vatpic, "atpic pin%d: %s, ignored, acnt %d",
		    pin, newstate ? "asserted" : "deasserted", newcnt);
	}

	FUNC4(vatpic);
}