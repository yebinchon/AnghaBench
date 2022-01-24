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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char) ; 

__attribute__((used)) static int
FUNC2(void *data, size_t len, void *unused)
{
	char *cdata = data;

	for (size_t i = 0; i < len; i++) {
		if (FUNC0(*cdata))
			(void) FUNC1("%c ", *cdata);
		else
			(void) FUNC1("%2X", *cdata);
		cdata++;
	}
	return (0);
}