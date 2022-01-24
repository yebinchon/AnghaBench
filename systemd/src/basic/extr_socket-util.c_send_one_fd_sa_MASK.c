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
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sockaddr const*,int /*<<< orphan*/ ,int) ; 

int FUNC2(
                int transport_fd,
                int fd,
                const struct sockaddr *sa, socklen_t len,
                int flags) {

        FUNC0(fd >= 0);

        return (int) FUNC1(transport_fd, fd, NULL, 0, sa, len, flags);
}