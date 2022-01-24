#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Hypertable ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_NOT_EXIST ; 
 int /*<<< orphan*/  ERRCODE_TS_TABLESPACE_NOT_ATTACHED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 scalar_t__ FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int
FUNC11(Oid hypertable_oid, const char *tspcname, Oid tspcoid, bool if_attached)
{
	Cache *hcache;
	Hypertable *ht;
	int ret = 0;

	FUNC9(hypertable_oid, FUNC0());

	hcache = FUNC7();
	ht = FUNC6(hcache, hypertable_oid);

	if (NULL == ht)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
				 FUNC3("table \"%s\" is not a hypertable", FUNC4(hypertable_oid))));

	if (FUNC8(ht, tspcoid))
		ret = FUNC10(ht->fd.id, tspcname);
	else if (if_attached)
		FUNC1(NOTICE,
				(FUNC2(ERRCODE_TS_TABLESPACE_NOT_ATTACHED),
				 FUNC3("tablespace \"%s\" is not attached to hypertable \"%s\", skipping",
						tspcname,
						FUNC4(hypertable_oid))));
	else
		FUNC1(ERROR,
				(FUNC2(ERRCODE_TS_TABLESPACE_NOT_ATTACHED),
				 FUNC3("tablespace \"%s\" is not attached to hypertable \"%s\"",
						tspcname,
						FUNC4(hypertable_oid))));

	FUNC5(hcache);

	return ret;
}