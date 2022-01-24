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
struct TYPE_3__ {int /*<<< orphan*/  main_table_relid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ Hypertable ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

__attribute__((used)) static inline Oid
FUNC3(Oid relid)
{
	Cache *hcache = FUNC2();
	Hypertable *ht = FUNC1(hcache, relid);
	Oid result = (ht == NULL) ? InvalidOid : ht->main_table_relid;

	FUNC0(hcache);

	return result;
}