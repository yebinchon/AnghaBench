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
struct winlinks {int dummy; } ;
struct winlink {int idx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct winlinks*,struct winlink*) ; 
 int /*<<< orphan*/ * FUNC1 (struct winlinks*,int) ; 
 int FUNC2 (struct winlinks*,int) ; 
 int /*<<< orphan*/  winlinks ; 
 struct winlink* FUNC3 (int,int) ; 

struct winlink *
FUNC4(struct winlinks *wwl, int idx)
{
	struct winlink	*wl;

	if (idx < 0) {
		if ((idx = FUNC2(wwl, -idx - 1)) == -1)
			return (NULL);
	} else if (FUNC1(wwl, idx) != NULL)
		return (NULL);

	wl = FUNC3(1, sizeof *wl);
	wl->idx = idx;
	FUNC0(winlinks, wwl, wl);

	return (wl);
}