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
struct TYPE_3__ {int num_constraints; int /*<<< orphan*/ * constraints; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_1__ ChunkConstraints ;
typedef  int /*<<< orphan*/  CatalogSecurityContext ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
 int /*<<< orphan*/  CHUNK_CONSTRAINT ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(ChunkConstraints *ccs)
{
	Catalog *catalog = FUNC6();
	CatalogSecurityContext sec_ctx;
	Relation rel;
	int i;

	rel = FUNC3(FUNC0(catalog, CHUNK_CONSTRAINT), RowExclusiveLock);

	FUNC4(FUNC5(), &sec_ctx);

	for (i = 0; i < ccs->num_constraints; i++)
		FUNC1(rel, &ccs->constraints[i]);

	FUNC7(&sec_ctx);
	FUNC2(rel, RowExclusiveLock);
}