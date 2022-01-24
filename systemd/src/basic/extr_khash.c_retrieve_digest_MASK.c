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
struct TYPE_4__ {int digest_valid; size_t digest_size; int /*<<< orphan*/  digest; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ khash ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(khash *h) {
        ssize_t n;

        FUNC0(h);

        if (h->digest_valid)
                return 0;

        n = FUNC1(h->fd, h->digest, h->digest_size, 0);
        if (n < 0)
                return n;
        if ((size_t) n != h->digest_size) /* digest size changed? */
                return -EIO;

        h->digest_valid = true;

        return 0;
}