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
typedef  size_t uint64_t ;
struct vm_guest_paging {int dummy; } ;
struct iovec {size_t iov_len; void* iov_base; } ;

/* Variables and functions */
 int EFAULT ; 
 size_t XHYVE_PAGE_MASK ; 
 scalar_t__ XHYVE_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (size_t,scalar_t__) ; 
 int FUNC2 (int,struct vm_guest_paging*,size_t,int,size_t*,int*) ; 
 void* FUNC3 (size_t,size_t) ; 

int
FUNC4(int vcpu, struct vm_guest_paging *pg, uint64_t gla, size_t len,
	int prot, struct iovec *iov, int iovcnt, int *fault)
{
	void *va;
	uint64_t gpa;
	size_t n, off;
	int i, error;

	for (i = 0; i < iovcnt; i++) {
		iov[i].iov_base = 0;
		iov[i].iov_len = 0;
	}

	while (len) {
		FUNC0(iovcnt > 0);

		error = FUNC2(vcpu, pg, gla, prot, &gpa, fault);
		if ((error) || *fault) {
			return (error);
		}

		off = gpa & XHYVE_PAGE_MASK;
		n = FUNC1(len, XHYVE_PAGE_SIZE - off);

		va = FUNC3(gpa, n);
		if (va == NULL) {
			return (EFAULT);
		}

		iov->iov_base = va;
		iov->iov_len = n;
		iov++;
		iovcnt--;

		gla += n;
		len -= n;
	}

	return (0);
}