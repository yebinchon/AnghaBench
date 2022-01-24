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
typedef  int u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int oy; int /*<<< orphan*/  backing; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC4(struct window_mode_entry *wme, const char *linestr)
{
	struct window_copy_mode_data	*data = wme->data;
	const char			*errstr;
	int				 lineno;

	lineno = FUNC1(linestr, -1, INT_MAX, &errstr);
	if (errstr != NULL)
		return;
	if (lineno < 0 || (u_int)lineno > FUNC0(data->backing))
		lineno = FUNC0(data->backing);

	data->oy = lineno;
	FUNC3(wme, 1);
	FUNC2(wme);
}