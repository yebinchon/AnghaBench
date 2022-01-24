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
struct stat_array {struct stat_array* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stat_array*) ; 

__attribute__((used)) static void
FUNC1(struct stat_array *nva, unsigned int len)
{
	int i;
	for (i = 0; i < len; i++)
		FUNC0(nva[i].data);

	FUNC0(nva);
}