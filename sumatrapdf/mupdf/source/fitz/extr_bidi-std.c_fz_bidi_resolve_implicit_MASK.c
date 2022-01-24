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
typedef  int fz_bidi_chartype ;

/* Variables and functions */
 int const BDI_BN ; 
 scalar_t__** add_level ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(const fz_bidi_chartype *pcls, fz_bidi_level *plevel, size_t cch)
{
	size_t ich;

	for (ich = 0; ich < cch; ich++)
	{
		// cannot resolve bn here, since some bn were resolved to strong
		// types in resolveWeak. To remove these we need the original
		// types, which are available again in resolveWhiteSpace
		if (pcls[ich] == BDI_BN)
		{
			continue;
		}
		FUNC0(pcls[ich] > 0); // "No Neutrals allowed to survive here."
		FUNC0(pcls[ich] < 5); // "Out of range."
		plevel[ich] += add_level[FUNC1(plevel[ich])][pcls[ich] - 1];
	}
}