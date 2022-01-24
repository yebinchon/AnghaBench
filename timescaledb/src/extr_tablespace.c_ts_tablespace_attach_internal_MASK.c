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
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * Name ;
typedef  TYPE_2__ Hypertable ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;
typedef  int /*<<< orphan*/  Cache ;
typedef  scalar_t__ AclResult ;

/* Variables and functions */
 scalar_t__ ACLCHECK_OK ; 
 int /*<<< orphan*/  ACL_CREATE ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_NOT_EXIST ; 
 int /*<<< orphan*/  ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_OBJECT ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ MyDatabaseTableSpace ; 
 int /*<<< orphan*/  NOTICE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC18 () ; 
 scalar_t__ FUNC19 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC21(Name tspcname, Oid hypertable_oid, bool if_not_attached)
{
	Cache *hcache;
	Hypertable *ht;
	Oid tspc_oid;
	Oid ownerid;
	AclResult aclresult;
	CatalogSecurityContext sec_ctx;

	if (NULL == tspcname)
		FUNC4(ERROR, "invalid tablespace name");

	if (!FUNC3(hypertable_oid))
		FUNC4(ERROR, "invalid hypertable");

	tspc_oid = FUNC10(FUNC2(*tspcname), true);

	if (!FUNC3(tspc_oid))
		FUNC5(ERROR,
				(FUNC6(ERRCODE_UNDEFINED_OBJECT),
				 FUNC8("tablespace \"%s\" does not exist", FUNC2(*tspcname)),
				 FUNC7("The tablespace needs to be created"
						 " before attaching it to a hypertable.")));

	ownerid = FUNC20(hypertable_oid, FUNC0());

	/*
	 * Only check permissions on tablespace if it is not the database default.
	 * In usual case users can create tables in their database which will use
	 * the default tablespace of the database. This condition makes sure they
	 * can also always move a table from another tablespace to the default of
	 * their own database. Related to this issue in postgres core:
	 * https://www.postgresql.org/message-id/52DC8AEA.7090507%402ndquadrant.com
	 * Which was handled in a similar way. (See
	 * tablecmds.c::ATPrepSetTableSpace)
	 */
	if (tspc_oid != MyDatabaseTableSpace)
	{
		/*
		 * Note that we check against the table owner rather than the current
		 * user here, since we're not actually creating a table using this
		 * tablespace at this point
		 */
		aclresult = FUNC11(tspc_oid, ownerid, ACL_CREATE);

		if (aclresult != ACLCHECK_OK)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC8("permission denied for tablespace \"%s\" by table owner \"%s\"",
							FUNC2(*tspcname),
							FUNC1(ownerid, true))));
	}
	hcache = FUNC18();
	ht = FUNC17(hcache, hypertable_oid);

	if (NULL == ht)
		FUNC5(ERROR,
				(FUNC6(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
				 FUNC8("table \"%s\" is not a hypertable", FUNC9(hypertable_oid))));

	if (FUNC19(ht, tspc_oid))
	{
		if (if_not_attached)
			FUNC5(NOTICE,
					(FUNC6(ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED),
					 FUNC8("tablespace \"%s\" is already attached to hypertable \"%s\", skipping",
							FUNC2(*tspcname),
							FUNC9(hypertable_oid))));
		else
			FUNC5(ERROR,
					(FUNC6(ERRCODE_TS_TABLESPACE_ALREADY_ATTACHED),
					 FUNC8("tablespace \"%s\" is already attached to hypertable \"%s\"",
							FUNC2(*tspcname),
							FUNC9(hypertable_oid))));
	}
	else
	{
		FUNC14(FUNC15(), &sec_ctx);
		FUNC12(ht->fd.id, FUNC2(*tspcname));
		FUNC16(&sec_ctx);
	}

	FUNC13(hcache);
}