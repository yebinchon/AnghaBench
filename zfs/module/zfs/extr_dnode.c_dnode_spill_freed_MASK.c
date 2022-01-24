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
struct TYPE_3__ {scalar_t__* dn_rm_spillblk; int /*<<< orphan*/  dn_mtx; } ;
typedef  TYPE_1__ dnode_t ;
typedef  int boolean_t ;

/* Variables and functions */
 scalar_t__ DN_KILL_SPILLBLK ; 
 int TXG_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static boolean_t
FUNC2(dnode_t *dn)
{
	int i;

	FUNC0(&dn->dn_mtx);
	for (i = 0; i < TXG_SIZE; i++) {
		if (dn->dn_rm_spillblk[i] == DN_KILL_SPILLBLK)
			break;
	}
	FUNC1(&dn->dn_mtx);
	return (i < TXG_SIZE);
}