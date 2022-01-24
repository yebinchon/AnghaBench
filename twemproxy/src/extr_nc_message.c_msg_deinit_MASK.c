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
struct msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct msg* FUNC1 (int /*<<< orphan*/ *) ; 
 struct msg* FUNC2 (struct msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_msgq ; 
 int /*<<< orphan*/  m_tqe ; 
 int /*<<< orphan*/  FUNC3 (struct msg*) ; 
 scalar_t__ nfree_msgq ; 

void
FUNC4(void)
{
    struct msg *msg, *nmsg;

    for (msg = FUNC1(&free_msgq); msg != NULL;
         msg = nmsg, nfree_msgq--) {
        FUNC0(nfree_msgq > 0);
        nmsg = FUNC2(msg, m_tqe);
        FUNC3(msg);
    }
    FUNC0(nfree_msgq == 0);
}