#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zv_objset; } ;
typedef  TYPE_1__ zvol_state_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {int /*<<< orphan*/  lr_length; int /*<<< orphan*/  lr_offset; } ;
typedef  TYPE_2__ lr_truncate_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *arg1, void *arg2, boolean_t byteswap)
{
	zvol_state_t *zv = arg1;
	lr_truncate_t *lr = arg2;
	uint64_t offset, length;

	if (byteswap)
		FUNC0(lr, sizeof (*lr));

	offset = lr->lr_offset;
	length = lr->lr_length;

	return (FUNC1(zv->zv_objset, ZVOL_OBJ, offset, length));
}