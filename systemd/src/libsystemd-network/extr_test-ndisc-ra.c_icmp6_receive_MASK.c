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
typedef  int /*<<< orphan*/  triple_timestamp ;
struct in6_addr {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(int fd, void *iov_base, size_t iov_len,
                  struct in6_addr *dst, triple_timestamp *timestamp) {
        FUNC0(FUNC1 (fd, iov_base, iov_len) == (ssize_t)iov_len);

        if (timestamp)
                FUNC2(timestamp);

        return 0;
}