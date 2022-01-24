#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zap_num_entries_mtx; } ;
struct TYPE_7__ {TYPE_1__ zap_f; int /*<<< orphan*/  zap_ismicro; } ;
typedef  TYPE_2__ zap_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  zap_num_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (TYPE_2__*) ; 

int
FUNC4(zap_t *zap, uint64_t *count)
{
	FUNC0(!zap->zap_ismicro);
	FUNC1(&zap->zap_f.zap_num_entries_mtx); /* unnecessary */
	*count = FUNC3(zap)->zap_num_entries;
	FUNC2(&zap->zap_f.zap_num_entries_mtx);
	return (0);
}