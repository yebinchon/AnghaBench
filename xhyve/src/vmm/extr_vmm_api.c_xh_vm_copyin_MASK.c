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
struct iovec {char* iov_base; int /*<<< orphan*/  iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,size_t) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 

void
FUNC3(struct iovec *iov, void *dst, size_t len)
{
	const char *src;
	char *d;
	size_t n;

	d = dst;
	while (len) {
		FUNC0(iov->iov_len);
		n = FUNC2(len, iov->iov_len);
		src = iov->iov_base;
		FUNC1(src, d, n);
		iov++;
		d += n;
		len -= n;
	}
}