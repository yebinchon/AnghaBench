#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32 ;
struct TYPE_10__ {int num_elements; int max_elements; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ int32_vec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  CurrentMemoryContext ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int* FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(void)
{
	int32_vec *vec = FUNC6(CurrentMemoryContext, 0);
	int i;
	uint32 old_capacity;
	for (i = 0; i < 100; i++)
		FUNC3(vec, i);

	FUNC0(vec->num_elements, 100);

	if (vec->max_elements < 100)
		FUNC2(ERROR, "vec capacity %d, should be at least 100", vec->max_elements);

	for (i = 0; i < 100; i++)
		FUNC0(*FUNC4(vec, i), i);

	FUNC1(FUNC10(vec), FUNC4(vec, vec->num_elements - 1));

	old_capacity = vec->max_elements;
	FUNC7(vec, 30, 19);
	FUNC0(vec->num_elements, 81);
	FUNC0(vec->max_elements, old_capacity);

	for (i = 0; i < 30; i++)
		FUNC0(*FUNC4(vec, i), i);

	for (; i < 51; i++)
		FUNC0(*FUNC4(vec, i), i + 19);

	FUNC1(FUNC10(vec), FUNC4(vec, vec->num_elements - 1));

	FUNC5(vec);
	FUNC0(vec->num_elements, 0);
	FUNC0(vec->max_elements, old_capacity);

	FUNC9(vec);
	FUNC0(vec->num_elements, 0);
	FUNC0(vec->max_elements, 0);
	FUNC1(vec->data, NULL);

	/* free_data is idempotent */
	FUNC9(vec);
	FUNC0(vec->num_elements, 0);
	FUNC0(vec->max_elements, 0);
	FUNC1(vec->data, NULL);

	FUNC8(vec);
}