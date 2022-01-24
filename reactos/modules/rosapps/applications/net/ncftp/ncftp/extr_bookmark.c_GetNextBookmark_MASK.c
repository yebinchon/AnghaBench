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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Bookmark ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *) ; 

int
FUNC2(FILE *fp, Bookmark *bmp)
{
	char line[512];

	while (FUNC0(line, sizeof(line), fp) != NULL) {
		if (FUNC1(line, bmp) >= 0)
			return (0);
	}
	return (-1);
}