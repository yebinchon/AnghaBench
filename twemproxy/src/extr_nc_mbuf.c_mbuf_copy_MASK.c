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
struct mbuf {size_t last; int /*<<< orphan*/ * end; int /*<<< orphan*/ * start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 size_t FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (size_t,int /*<<< orphan*/ *,size_t) ; 

void
FUNC4(struct mbuf *mbuf, uint8_t *pos, size_t n)
{
    if (n == 0) {
        return;
    }

    /* mbuf has space for n bytes */
    FUNC0(!FUNC1(mbuf) && n <= FUNC2(mbuf));

    /* no overlapping copy */
    FUNC0(pos < mbuf->start || pos >= mbuf->end);

    FUNC3(mbuf->last, pos, n);
    mbuf->last += n;
}