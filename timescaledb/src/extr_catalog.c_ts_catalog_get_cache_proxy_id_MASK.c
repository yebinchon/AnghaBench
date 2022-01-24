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
struct TYPE_6__ {TYPE_1__* caches; } ;
struct TYPE_5__ {int /*<<< orphan*/  inval_proxy_id; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Catalog ;
typedef  size_t CacheType ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SCHEMA_NAME ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * cache_proxy_table_names ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Oid
FUNC5(Catalog *catalog, CacheType type)
{
	if (!FUNC2(catalog))
	{
		Oid schema;

		/*
		 * The catalog can be invalid during upgrade scripts. Try a non-cached
		 * relation lookup, but we need to be in a transaction for
		 * get_namespace_oid() to work.
		 */
		if (!FUNC0())
			return InvalidOid;

		schema = FUNC3(CACHE_SCHEMA_NAME, true);

		if (!FUNC1(schema))
			return InvalidOid;

		return FUNC4(cache_proxy_table_names[type], schema);
	}

	return catalog->caches[type].inval_proxy_id;
}