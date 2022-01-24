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
struct window_pane {int dummy; } ;
struct format_modifier {int argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC1 (struct window_pane*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(struct format_modifier *fm, struct window_pane *wp, const char *s)
{
	int	 ignore = 0, regex = 0;
	char	*value;

	if (fm->argc >= 1) {
		if (FUNC0(fm->argv[0], 'i') != NULL)
			ignore = 1;
		if (FUNC0(fm->argv[0], 'r') != NULL)
			regex = 1;
	}
	FUNC2(&value, "%u", FUNC1(wp, s, regex, ignore));
	return (value);
}