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
struct msg {int /*<<< orphan*/  mhdr; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct mbuf*) ; 
 size_t FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  next ; 

struct mbuf *
FUNC5(struct msg *msg, size_t len)
{
    struct mbuf *mbuf;

    if (FUNC0(&msg->mhdr) ||
        FUNC4(FUNC1(&msg->mhdr, mbuf, next)) < len) {
        mbuf = FUNC2();
        if (mbuf == NULL) {
            return NULL;
        }
        FUNC3(&msg->mhdr, mbuf);
    } else {
        mbuf = FUNC1(&msg->mhdr, mbuf, next);
    }

    return mbuf;
}