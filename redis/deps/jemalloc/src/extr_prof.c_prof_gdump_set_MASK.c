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
typedef  int /*<<< orphan*/  tsdn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_gdump_mtx ; 
 int prof_gdump_val ; 

bool
FUNC2(tsdn_t *tsdn, bool gdump) {
	bool prof_gdump_old;

	FUNC0(tsdn, &prof_gdump_mtx);
	prof_gdump_old = prof_gdump_val;
	prof_gdump_val = gdump;
	FUNC1(tsdn, &prof_gdump_mtx);
	return prof_gdump_old;
}