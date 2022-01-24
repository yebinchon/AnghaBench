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
struct mod_hash_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * mh_e_cache ; 
 int /*<<< orphan*/  mh_head_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(void)
{
	FUNC0(mh_e_cache == NULL);
	mh_e_cache = FUNC1("mod_hash_entries",
	    sizeof (struct mod_hash_entry), 0, NULL, NULL, NULL, NULL,
	    NULL, 0);

	FUNC2(&mh_head_lock, NULL, MUTEX_DEFAULT, NULL);
}