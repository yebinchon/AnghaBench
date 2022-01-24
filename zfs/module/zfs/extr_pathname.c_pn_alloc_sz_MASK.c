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
struct pathname {size_t pn_bufsize; scalar_t__ pn_pathlen; int /*<<< orphan*/  pn_buf; int /*<<< orphan*/  pn_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 

void
FUNC1(struct pathname *pnp, size_t sz)
{
	pnp->pn_buf = FUNC0(sz, KM_SLEEP);
	pnp->pn_bufsize = sz;
#if 0 /* unused in ZoL */
	pnp->pn_path = pnp->pn_buf;
	pnp->pn_pathlen = 0;
#endif
}