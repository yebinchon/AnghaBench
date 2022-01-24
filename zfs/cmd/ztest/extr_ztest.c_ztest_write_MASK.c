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
typedef  int /*<<< orphan*/  ztest_ds_t ;
typedef  void* uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  lr_blkptr; scalar_t__ lr_blkoff; void* lr_length; void* lr_offset; void* lr_foid; } ;
typedef  TYPE_1__ lr_write_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC1 (void*,TYPE_1__*,void*) ; 
 TYPE_1__* FUNC2 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,void*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(ztest_ds_t *zd, uint64_t object, uint64_t offset, uint64_t size,
    void *data)
{
	lr_write_t *lr;
	int error;

	lr = FUNC2(sizeof (*lr) + size, NULL);

	lr->lr_foid = object;
	lr->lr_offset = offset;
	lr->lr_length = size;
	lr->lr_blkoff = 0;
	FUNC0(&lr->lr_blkptr);

	FUNC1(data, lr + 1, size);

	error = FUNC4(zd, lr, B_FALSE);

	FUNC3(lr, sizeof (*lr) + size, NULL);

	return (error);
}