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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int /*<<< orphan*/  uid ;
struct iovec {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * storage_socket; } ;
typedef  TYPE_1__ DynamicUser ;

/* Variables and functions */
 struct iovec FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,struct iovec*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(DynamicUser *d, uid_t uid, int lock_fd) {
        struct iovec iov = FUNC0(&uid, sizeof(uid));

        FUNC1(d);

        /* Store the UID and lock_fd in the storage socket. This should be called with the socket pair lock taken. */
        return FUNC2(d->storage_socket[1], lock_fd, &iov, 1, MSG_DONTWAIT);
}