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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  CmdType ;
typedef  int CatalogTable ;
typedef  int /*<<< orphan*/  Catalog ;

/* Variables and functions */
#define  BGW_JOB 134 
 int /*<<< orphan*/  CACHE_TYPE_BGW_JOB ; 
 int /*<<< orphan*/  CACHE_TYPE_HYPERTABLE ; 
#define  CHUNK 133 
#define  CHUNK_CONSTRAINT 132 
#define  CHUNK_INDEX 131 
 int /*<<< orphan*/  CMD_DELETE ; 
 int /*<<< orphan*/  CMD_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  DIMENSION 130 
#define  DIMENSION_SLICE 129 
#define  HYPERTABLE 128 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(Oid catalog_relid, CmdType operation)
{
	Catalog *catalog = FUNC2();
	CatalogTable table = FUNC1(catalog, catalog_relid);
	Oid relid;

	switch (table)
	{
		case CHUNK:
		case CHUNK_CONSTRAINT:
		case DIMENSION_SLICE:
			if (operation == CMD_UPDATE || operation == CMD_DELETE)
			{
				relid = FUNC3(catalog, CACHE_TYPE_HYPERTABLE);
				FUNC0(relid);
			}
			break;
		case HYPERTABLE:
		case DIMENSION:
			relid = FUNC3(catalog, CACHE_TYPE_HYPERTABLE);
			FUNC0(relid);
			break;
		case BGW_JOB:
			relid = FUNC3(catalog, CACHE_TYPE_BGW_JOB);
			FUNC0(relid);
			break;
		case CHUNK_INDEX:
		default:
			break;
	}
}