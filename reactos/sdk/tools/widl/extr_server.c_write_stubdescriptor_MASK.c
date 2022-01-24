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
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ type_t ;

/* Variables and functions */
 scalar_t__ MODE_Oif ; 
 int /*<<< orphan*/  context_handle_list ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  indent ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  server ; 
 int /*<<< orphan*/  user_type_list ; 

__attribute__((used)) static void FUNC4(type_t *iface, int expr_eval_routines)
{
    FUNC3("static const MIDL_STUB_DESC %s_StubDesc =\n", iface->name);
    FUNC3("{\n");
    indent++;
    FUNC3("(void *)& %s___RpcServerInterface,\n", iface->name);
    FUNC3("MIDL_user_allocate,\n");
    FUNC3("MIDL_user_free,\n");
    FUNC3("{\n");
    indent++;
    FUNC3("0,\n");
    indent--;
    FUNC3("},\n");
    if (!FUNC2( &context_handle_list ))
        FUNC3("RundownRoutines,\n");
    else
        FUNC3("0,\n");
    FUNC3("0,\n");
    if (expr_eval_routines)
        FUNC3("ExprEvalRoutines,\n");
    else
        FUNC3("0,\n");
    FUNC3("0,\n");
    FUNC3("__MIDL_TypeFormatString.Format,\n");
    FUNC3("1, /* -error bounds_check flag */\n");
    FUNC3("0x%x, /* Ndr library version */\n", FUNC1() == MODE_Oif ? 0x50002 : 0x10001);
    FUNC3("0,\n");
    FUNC3("0x50100a4, /* MIDL Version 5.1.164 */\n");
    FUNC3("0,\n");
    FUNC3("%s,\n", FUNC2(&user_type_list) ? "0" : "UserMarshalRoutines");
    FUNC3("0,  /* notify & notify_flag routine table */\n");
    FUNC3("1,  /* Flags */\n");
    FUNC3("0,  /* Reserved3 */\n");
    FUNC3("0,  /* Reserved4 */\n");
    FUNC3("0   /* Reserved5 */\n");
    indent--;
    FUNC3("};\n");
    FUNC0(server, "\n");
}