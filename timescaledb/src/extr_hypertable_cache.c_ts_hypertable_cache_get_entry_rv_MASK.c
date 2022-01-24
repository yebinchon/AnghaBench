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
typedef  int /*<<< orphan*/  RangeVar ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

Hypertable *
FUNC2(Cache *cache, RangeVar *rv)
{
	return FUNC1(cache, FUNC0(rv, NoLock, true));
}