#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * storage; int /*<<< orphan*/ * storage_free; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  Form_dimension_slice ;
typedef  int /*<<< orphan*/  FormData_dimension_slice ;
typedef  TYPE_1__ DimensionSlice ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline DimensionSlice *
FUNC2(Form_dimension_slice fd)
{
	DimensionSlice *slice = FUNC0();

	FUNC1(&slice->fd, fd, sizeof(FormData_dimension_slice));
	slice->storage_free = NULL;
	slice->storage = NULL;
	return slice;
}