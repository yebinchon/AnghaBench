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
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {int digest_valid; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ khash ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MORE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ) ; 

int FUNC2(khash *h, const void *buffer, size_t size) {
        ssize_t n;

        FUNC0(h);
        FUNC0(buffer || size == 0);

        if (size <= 0)
                return 0;

        n = FUNC1(h->fd, buffer, size, MSG_MORE);
        if (n < 0)
                return -errno;

        h->digest_valid = false;

        return 0;
}