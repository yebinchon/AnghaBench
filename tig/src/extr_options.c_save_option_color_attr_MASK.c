#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int value; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* attr_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3(FILE *file, int attr)
{
	int i;

	for (i = 0; i < FUNC0(attr_map); i++)
		if ((attr & attr_map[i].value) &&
		    !FUNC2(file, " %s", FUNC1(attr_map[i].name)))
			return false;

	return true;
}