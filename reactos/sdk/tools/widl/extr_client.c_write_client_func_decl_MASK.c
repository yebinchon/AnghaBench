#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_6__* type; } ;
typedef  TYPE_1__ var_t ;
typedef  int /*<<< orphan*/  var_list_t ;
struct TYPE_11__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ type_t ;
struct TYPE_12__ {int /*<<< orphan*/  attrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CALLCONV ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  indent ; 
 char* prefix_client ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__* FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC8( const type_t *iface, const var_t *func )
{
    const char *callconv = FUNC1(func->type->attrs, ATTR_CALLCONV);
    const var_list_t *args = FUNC5(func->type);
    type_t *rettype = FUNC4(func->type);

    if (!callconv) callconv = "__cdecl";
    FUNC7(client, rettype);
    FUNC0(client, " %s ", callconv);
    FUNC0(client, "%s%d(\n", prefix_client, FUNC2(func));
    indent++;
    if (args)
        FUNC6(client, args, iface->name, 0, TRUE);
    else
        FUNC3("void");
    FUNC0(client, ")\n");
    indent--;
}