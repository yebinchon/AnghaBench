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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int lr_attr_masksize; } ;
typedef  TYPE_1__ lr_attr_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(lr_attr_t *lrattr)
{
	/* swap the lr_attr structure */
	FUNC0(lrattr, sizeof (*lrattr));
	/* swap the bitmap */
	FUNC0(lrattr + 1, (lrattr->lr_attr_masksize - 1) *
	    sizeof (uint32_t));
	/* swap the attributes, create time + 64 bit word for attributes */
	FUNC1((caddr_t)(lrattr + 1) + (sizeof (uint32_t) *
	    (lrattr->lr_attr_masksize - 1)), 3 * sizeof (uint64_t));
}