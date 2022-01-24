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
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free_mbufq ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ nfree_mbufq ; 

void
FUNC5(void)
{
    while (!FUNC1(&free_mbufq)) {
        struct mbuf *mbuf = FUNC2(&free_mbufq);
        FUNC4(&free_mbufq, mbuf);
        FUNC3(mbuf);
        nfree_mbufq--;
    }
    FUNC0(nfree_mbufq == 0);
}