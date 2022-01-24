#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  drc_cksum; scalar_t__ drc_byteswap; } ;
typedef  TYPE_1__ dmu_recv_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(dmu_recv_cookie_t *drc, int len, void *buf)
{
	if (drc->drc_byteswap) {
		(void) FUNC0(buf, len,
		    &drc->drc_cksum);
	} else {
		(void) FUNC1(buf, len, &drc->drc_cksum);
	}
}