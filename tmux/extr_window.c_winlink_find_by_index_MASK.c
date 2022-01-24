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
 struct winlink* FUNC0 (int /*<<< orphan*/ ,struct winlinks*,struct winlink*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  winlinks ; 

struct winlink *
FUNC2(struct winlinks *wwl, int idx)
{
	struct winlink	wl;

	if (idx < 0)
		FUNC1("bad index");

	wl.idx = idx;
	return (FUNC0(winlinks, wwl, &wl));
}