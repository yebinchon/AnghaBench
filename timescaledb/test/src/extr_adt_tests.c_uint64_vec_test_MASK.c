#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; int /*<<< orphan*/  max_elements; int /*<<< orphan*/  num_elements; } ;
typedef  TYPE_1__ uint64_vec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	uint64_vec vec;
	int i;
	FUNC5(&vec, CurrentMemoryContext, 100);
	for (i = 0; i < 30; i++)
		FUNC2(&vec, i + 3);

	FUNC0(vec.num_elements, 30);
	FUNC0(vec.max_elements, 100);
	for (i = 0; i < 30; i++)
		FUNC0(*FUNC3(&vec, i), i + 3);

	FUNC4(&vec);
	FUNC0(vec.num_elements, 0);
	FUNC0(vec.max_elements, 0);
	FUNC1(vec.data, NULL);
}