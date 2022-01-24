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
struct mbuf {scalar_t__ magic; scalar_t__ pos; scalar_t__ last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LOG_VVERB ; 
 scalar_t__ MBUF_MAGIC ; 
 int /*<<< orphan*/ * FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct mbuf*,scalar_t__) ; 
 int mbuf_offset ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static void
FUNC4(struct mbuf *mbuf)
{
    uint8_t *buf;

    FUNC2(LOG_VVERB, "put mbuf %p len %d", mbuf, mbuf->last - mbuf->pos);

    FUNC0(FUNC1(mbuf, next) == NULL);
    FUNC0(mbuf->magic == MBUF_MAGIC);

    buf = (uint8_t *)mbuf - mbuf_offset;
    FUNC3(buf);
}