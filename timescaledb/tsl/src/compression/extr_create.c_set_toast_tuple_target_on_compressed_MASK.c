#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* defname; int location; int /*<<< orphan*/ * def; int /*<<< orphan*/  subtype; int /*<<< orphan*/  type; int /*<<< orphan*/  defaction; int /*<<< orphan*/ * arg; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ DefElem ;
typedef  TYPE_1__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  AT_SetRelOptions ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  DEFELEM_SET ; 
 int /*<<< orphan*/  T_AlterTableCmd ; 
 int /*<<< orphan*/  T_DefElem ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(Oid compressed_table_id)
{
	DefElem def_elem = {
		.type = T_DefElem,
		.defname = "toast_tuple_target",
		.arg = (Node *) FUNC2(128),
		.defaction = DEFELEM_SET,
		.location = -1,
	};
	AlterTableCmd cmd = {
		.type = T_AlterTableCmd,
		.subtype = AT_SetRelOptions,
		.def = (Node *) FUNC1(&def_elem),
	};
	FUNC0(compressed_table_id, FUNC1(&cmd), true);
}