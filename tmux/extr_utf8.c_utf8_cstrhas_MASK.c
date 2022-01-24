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
struct utf8_data {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct utf8_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct utf8_data* FUNC2 (char const*) ; 

int
FUNC3(const char *s, const struct utf8_data *ud)
{
	struct utf8_data	*copy, *loop;
	int			 found = 0;

	copy = FUNC2(s);
	for (loop = copy; loop->size != 0; loop++) {
		if (loop->size != ud->size)
			continue;
		if (FUNC1(loop->data, ud->data, loop->size) == 0) {
			found = 1;
			break;
		}
	}
	FUNC0(copy);

	return (found);
}