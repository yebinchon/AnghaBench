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
struct winlink {int dummy; } ;
struct window_pane {int dummy; } ;
struct session {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,struct session*,struct winlink*,struct window_pane*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(struct session *s, struct winlink *wl,
    struct window_pane *wp, const char *filter)
{
	char	*cp;
	int	 result;

	if (filter == NULL)
		return (1);

	cp = FUNC0(NULL, filter, NULL, s, wl, wp);
	result = FUNC1(cp);
	FUNC2(cp);

	return (result);
}