#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  name; scalar_t__ def; } ;
struct TYPE_13__ {int /*<<< orphan*/  typeName; } ;
struct TYPE_10__ {int /*<<< orphan*/  id; } ;
struct TYPE_12__ {TYPE_1__ fd; } ;
struct TYPE_11__ {int /*<<< orphan*/  space; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_2__ Hypertable ;
typedef  TYPE_3__ Dimension ;
typedef  TYPE_4__ ColumnDef ;
typedef  TYPE_5__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  DIMENSION_TYPE_ANY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(Hypertable *ht, AlterTableCmd *cmd)
{
	ColumnDef *coldef = (ColumnDef *) cmd->def;
	Oid new_type = FUNC0(FUNC5(coldef->typeName));
	Dimension *dim = FUNC3(ht->space, DIMENSION_TYPE_ANY, cmd->name);

	if (NULL == dim)
		return;

	FUNC2(dim, new_type);
	FUNC4(true);
	FUNC1(ht->space, dim->fd.id);
	FUNC4(false);
}