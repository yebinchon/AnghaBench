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
typedef  scalar_t__ uint32_t ;
struct msg {int /*<<< orphan*/  mlen; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  rstatus_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NC_ENOMEM ; 
 int /*<<< orphan*/  NC_OK ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 () ; 
 size_t FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 (struct msg*,size_t) ; 

rstatus_t
FUNC5(struct msg *msg, uint8_t *pos, size_t n)
{
    struct mbuf *mbuf;

    FUNC0(n <= FUNC2());

    mbuf = FUNC4(msg, n);
    if (mbuf == NULL) {
        return NC_ENOMEM;
    }

    FUNC0(n <= FUNC3(mbuf));

    FUNC1(mbuf, pos, n);
    msg->mlen += (uint32_t)n;

    return NC_OK;
}