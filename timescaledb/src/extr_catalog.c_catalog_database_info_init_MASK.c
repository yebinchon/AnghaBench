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
struct TYPE_3__ {scalar_t__ schema_id; int /*<<< orphan*/  owner_uid; int /*<<< orphan*/  database_name; int /*<<< orphan*/  database_id; } ;
typedef  TYPE_1__ CatalogDatabaseInfo ;

/* Variables and functions */
 int /*<<< orphan*/  CATALOG_SCHEMA_NAME ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  MyDatabaseId ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(CatalogDatabaseInfo *info)
{
	info->database_id = MyDatabaseId;
	FUNC0(info->database_name, FUNC3(MyDatabaseId), NAMEDATALEN);
	info->schema_id = FUNC4(CATALOG_SCHEMA_NAME, false);
	info->owner_uid = FUNC1();

	if (info->schema_id == InvalidOid)
		FUNC2(ERROR, "OID lookup failed for schema \"%s\"", CATALOG_SCHEMA_NAME);
}