#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_5__* type; } ;
typedef  TYPE_1__ var_t ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ type_t ;
struct TYPE_10__ {int /*<<< orphan*/  attrs; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_CALLCONV ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(FILE *header, const type_t *iface, const var_t *fun, const char *prefix)
{
  const char *callconv = FUNC1(fun->type->attrs, ATTR_CALLCONV);

  if (!callconv) callconv = "__cdecl";
  /* FIXME: do we need to handle call_as? */
  FUNC6(header, FUNC3(fun->type));
  FUNC0(header, " %s ", callconv);
  FUNC0(header, "%s%s(\n", prefix, FUNC2(fun));
  if (FUNC4(fun->type))
    FUNC5(header, FUNC4(fun->type), iface->name, 0, TRUE);
  else
    FUNC0(header, "    void");
  FUNC0(header, ");\n\n");
}