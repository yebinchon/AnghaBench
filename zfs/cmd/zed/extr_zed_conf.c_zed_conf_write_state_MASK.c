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
typedef  int /*<<< orphan*/  uint64_t ;
struct zed_conf {int /*<<< orphan*/  state_file; int /*<<< orphan*/  state_fd; } ;
struct iovec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  etime ;
typedef  int /*<<< orphan*/  eid ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct iovec*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

int
FUNC5(struct zed_conf *zcp, uint64_t eid, int64_t etime[])
{
	ssize_t len;
	struct iovec iov[3];
	ssize_t n;

	if (!zcp) {
		errno = EINVAL;
		FUNC4(LOG_ERR,
		    "Failed to write state file: %s", FUNC2(errno));
		return (-1);
	}
	if (FUNC1(zcp->state_fd, 0, SEEK_SET) == (off_t)-1) {
		FUNC4(LOG_WARNING,
		    "Failed to reposition state file offset: %s",
		    FUNC2(errno));
		return (-1);
	}
	len = 0;
	iov[0].iov_base = &eid;
	len += iov[0].iov_len = sizeof (eid);
	iov[1].iov_base = &etime[0];
	len += iov[1].iov_len = sizeof (etime[0]);
	iov[2].iov_base = &etime[1];
	len += iov[2].iov_len = sizeof (etime[1]);

	n = FUNC3(zcp->state_fd, iov, 3);
	if (n < 0) {
		FUNC4(LOG_WARNING,
		    "Failed to write state file \"%s\": %s",
		    zcp->state_file, FUNC2(errno));
		return (-1);
	}
	if (n != len) {
		errno = EIO;
		FUNC4(LOG_WARNING,
		    "Failed to write state file \"%s\": Wrote %d of %d bytes",
		    zcp->state_file, n, len);
		return (-1);
	}
	if (FUNC0(zcp->state_fd) < 0) {
		FUNC4(LOG_WARNING,
		    "Failed to sync state file \"%s\": %s",
		    zcp->state_file, FUNC2(errno));
		return (-1);
	}
	return (0);
}