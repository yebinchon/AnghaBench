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
struct TYPE_2__ {int /*<<< orphan*/  tm; int /*<<< orphan*/  attr; int /*<<< orphan*/  rm; } ;

/* Variables and functions */
 int /*<<< orphan*/  HLF_L ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  no_hlsearch ; 
 scalar_t__ p_hls ; 
 int /*<<< orphan*/  p_rdt ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ search_hl ; 

__attribute__((used)) static void
FUNC3()
{
    if (p_hls && !no_hlsearch)
    {
	FUNC1(&search_hl.rm);
	search_hl.attr = FUNC0(HLF_L);
# ifdef FEAT_RELTIME
	/* Set the time limit to 'redrawtime'. */
	profile_setlimit(p_rdt, &search_hl.tm);
# endif
    }
}