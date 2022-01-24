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
typedef  int /*<<< orphan*/  fz_bidi_level ;
typedef  scalar_t__ fz_bidi_chartype ;

/* Variables and functions */
 scalar_t__ BDI_BN ; 
 scalar_t__ BDI_N ; 
 int In ; 
 int** action_neutrals ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int l ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int r ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,size_t,size_t,scalar_t__) ; 
 int** state_neutrals ; 

void FUNC6(fz_bidi_level baselevel, fz_bidi_chartype *pcls, const fz_bidi_level *plevel, size_t cch)
{
	// the state at the start of text depends on the base level
	int state = FUNC4(baselevel) ? r : l;
	fz_bidi_chartype cls;
	size_t ich;
	fz_bidi_chartype cls_run;

	size_t cch_run = 0;
	fz_bidi_level level = baselevel;

	for (ich = 0; ich < cch; ich++)
	{
		int action;
		fz_bidi_chartype cls_new;

		// ignore boundary neutrals
		if (pcls[ich] == BDI_BN)
		{
			// include in the count for a deferred run
			if (cch_run)
				cch_run++;

			// skip any further processing
			continue;
		}

		FUNC0(pcls[ich] < 5); // "Only N, L, R, AN, EN are allowed"
		cls = pcls[ich];

		action = action_neutrals[state][cls];

		// resolve the directionality for deferred runs
		cls_run = FUNC2(action, level);
		if (cls_run != BDI_N)
		{
			FUNC5(pcls, cch_run, ich, cls_run);
			cch_run = 0;
		}

		// resolve the directionality class at the current location
		cls_new = FUNC3(action);
		if (cls_new != BDI_N)
			pcls[ich] = cls_new;

		if (In & action)
			cch_run++;

		state = state_neutrals[state][cls];
		level = plevel[ich];
	}

	// resolve any deferred runs
	cls = FUNC1(level);	// eor has type of current level

	// resolve the directionality for deferred runs
	cls_run = FUNC2(action_neutrals[state][cls], level);
	if (cls_run != BDI_N)
		FUNC5(pcls, cch_run, ich, cls_run);
}