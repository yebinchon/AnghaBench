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
typedef  scalar_t__ uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct vie {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct mmio_rb_range {scalar_t__ mr_base; scalar_t__ mr_end; TYPE_1__ mr_param; } ;

/* Variables and functions */
 int ESRCH ; 
 int MEM_F_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mem_read ; 
 int /*<<< orphan*/  mem_write ; 
 struct mmio_rb_range** mmio_hint ; 
 int /*<<< orphan*/  mmio_rb_fallback ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,struct mmio_rb_range**) ; 
 int /*<<< orphan*/  mmio_rb_root ; 
 int /*<<< orphan*/  mmio_rwlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,scalar_t__,struct vie*,struct vm_guest_paging*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

int
FUNC5(int vcpu, uint64_t paddr, struct vie *vie,
	struct vm_guest_paging *paging)

{
	struct mmio_rb_range *entry;
	int err, immutable;

	FUNC2(&mmio_rwlock);
	/*
	 * First check the per-vCPU cache
	 */
	if (mmio_hint[vcpu] &&
	    paddr >= mmio_hint[vcpu]->mr_base &&
	    paddr <= mmio_hint[vcpu]->mr_end) {
		entry = mmio_hint[vcpu];
	} else
		entry = NULL;

	if (entry == NULL) {
		if (FUNC1(&mmio_rb_root, paddr, &entry) == 0) {
			/* Update the per-vCPU cache */
			mmio_hint[vcpu] = entry;			
		} else if (FUNC1(&mmio_rb_fallback, paddr, &entry)) {
			FUNC3(&mmio_rwlock);
			return (ESRCH);
		}
	}

	FUNC0(entry != NULL);

	/*
	 * An 'immutable' memory range is guaranteed to be never removed
	 * so there is no need to hold 'mmio_rwlock' while calling the
	 * handler.
	 *
	 * XXX writes to the PCIR_COMMAND register can cause register_mem()
	 * to be called. If the guest is using PCI extended config space
	 * to modify the PCIR_COMMAND register then register_mem() can
	 * deadlock on 'mmio_rwlock'. However by registering the extended
	 * config space window as 'immutable' the deadlock can be avoided.
	 */
	immutable = (entry->mr_param.flags & MEM_F_IMMUTABLE);
	if (immutable)
		FUNC3(&mmio_rwlock);

	err = FUNC4(vcpu, paddr, vie, paging, mem_read,
		mem_write, &entry->mr_param);

	if (!immutable)
		FUNC3(&mmio_rwlock);

	return (err);
}