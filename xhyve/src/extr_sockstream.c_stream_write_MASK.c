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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/  const*,size_t) ; 

ssize_t
FUNC1(int fd, const void *buf, ssize_t nbytes)
{
	const uint8_t *p;
	ssize_t len = 0;
	ssize_t n;

	p = buf;

	while (len < nbytes) {
		n = FUNC0(fd, p + len, (size_t)(nbytes - len));
		if (n == 0)
			break;
		if (n < 0) {
			if (errno == EINTR || errno == EAGAIN)
				continue;
			return (n);
		}
		len += n;
	}
	return (len);
}