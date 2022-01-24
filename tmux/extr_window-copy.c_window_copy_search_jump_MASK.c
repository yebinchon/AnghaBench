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
typedef  scalar_t__ u_int ;
struct window_mode_entry {int dummy; } ;
struct grid {scalar_t__ sx; int hsize; int sy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct window_mode_entry*,scalar_t__,scalar_t__) ; 
 int FUNC1 (struct grid*,struct grid*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int FUNC2 (struct grid*,struct grid*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC3(struct window_mode_entry *wme, struct grid *gd,
    struct grid *sgd, u_int fx, u_int fy, u_int endline, int cis, int wrap,
    int direction)
{
	u_int	i, px;
	int	found;

	found = 0;
	if (direction) {
		for (i = fy; i <= endline; i++) {
			found = FUNC1(gd, sgd, &px, i, fx,
			    gd->sx, cis);
			if (found)
				break;
			fx = 0;
		}
	} else {
		for (i = fy + 1; endline < i; i--) {
			found = FUNC2(gd, sgd, &px, i - 1, 0,
			    fx, cis);
			if (found) {
				i--;
				break;
			}
			fx = gd->sx;
		}
	}

	if (found) {
		FUNC0(wme, px, i);
		return (1);
	}
	if (wrap) {
		return (FUNC3(wme, gd, sgd,
		    direction ? 0 : gd->sx - 1,
		    direction ? 0 : gd->hsize + gd->sy - 1, fy, cis, 0,
		    direction));
	}
	return (0);
}