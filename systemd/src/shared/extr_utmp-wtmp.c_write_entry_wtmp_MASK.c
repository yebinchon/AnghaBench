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
struct utmpx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _PATH_WTMPX ; 
 int /*<<< orphan*/  FUNC0 (struct utmpx const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct utmpx const*) ; 

__attribute__((used)) static int FUNC2(const struct utmpx *store) {
        FUNC0(store);

        /* wtmp is a simple append-only file where each entry is
        simply appended to the end; i.e. basically a log. */

        errno = 0;
        FUNC1(_PATH_WTMPX, store);
        return -errno;
}