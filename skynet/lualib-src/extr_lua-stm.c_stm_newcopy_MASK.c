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
struct stm_copy {int reference; void* msg; int /*<<< orphan*/  sz; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 struct stm_copy* FUNC0 (int) ; 

__attribute__((used)) static struct stm_copy *
FUNC1(void * msg, int32_t sz) {
	struct stm_copy * copy = FUNC0(sizeof(*copy));
	copy->reference = 1;
	copy->sz = sz;
	copy->msg = msg;

	return copy;
}