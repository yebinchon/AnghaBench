#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* buffer; } ;
struct uncomplete {struct uncomplete* next; TYPE_1__ pack; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 

__attribute__((used)) static void
FUNC1(struct uncomplete * uc) {
	while (uc) {
		FUNC0(uc->pack.buffer);
		void * tmp = uc;
		uc = uc->next;
		FUNC0(tmp);
	}
}