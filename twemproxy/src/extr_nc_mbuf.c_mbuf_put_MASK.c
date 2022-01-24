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
struct mbuf {scalar_t__ magic; scalar_t__ pos; scalar_t__ last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ MBUF_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_mbufq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  nfree_mbufq ; 

void
FUNC4(struct mbuf *mbuf)
{
    FUNC3(LOG_VVERB, "put mbuf %p len %d", mbuf, mbuf->last - mbuf->pos);

    FUNC0(FUNC2(mbuf, next) == NULL);
    FUNC0(mbuf->magic == MBUF_MAGIC);

    nfree_mbufq++;
    FUNC1(&free_mbufq, mbuf, next);
}