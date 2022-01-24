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
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ var_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; int /*<<< orphan*/  attrs; } ;
typedef  TYPE_2__ type_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IMPLICIT_HANDLE ; 
 scalar_t__ MODE_Oif ; 
 int /*<<< orphan*/  client ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  generic_handle_list ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  indent ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  user_type_list ; 

__attribute__((used)) static void FUNC5(type_t *iface, int expr_eval_routines)
{
    const var_t *implicit_handle = FUNC1(iface->attrs, ATTR_IMPLICIT_HANDLE);

    FUNC4("static const MIDL_STUB_DESC %s_StubDesc =\n", iface->name);
    FUNC4("{\n");
    indent++;
    FUNC4("(void *)& %s___RpcClientInterface,\n", iface->name);
    FUNC4("MIDL_user_allocate,\n");
    FUNC4("MIDL_user_free,\n");
    FUNC4("{\n");
    indent++;
    if (implicit_handle)
        FUNC4("&%s,\n", implicit_handle->name);
    else
        FUNC4("&%s__MIDL_AutoBindHandle,\n", iface->name);
    indent--;
    FUNC4("},\n");
    FUNC4("0,\n");
    if (!FUNC3( &generic_handle_list ))
        FUNC4("BindingRoutines,\n");
    else
        FUNC4("0,\n");
    if (expr_eval_routines)
        FUNC4("ExprEvalRoutines,\n");
    else
        FUNC4("0,\n");
    FUNC4("0,\n");
    FUNC4("__MIDL_TypeFormatString.Format,\n");
    FUNC4("1, /* -error bounds_check flag */\n");
    FUNC4("0x%x, /* Ndr library version */\n", FUNC2() == MODE_Oif ? 0x50002 : 0x10001);
    FUNC4("0,\n");
    FUNC4("0x50100a4, /* MIDL Version 5.1.164 */\n");
    FUNC4("0,\n");
    FUNC4("%s,\n", FUNC3(&user_type_list) ? "0" : "UserMarshalRoutines");
    FUNC4("0,  /* notify & notify_flag routine table */\n");
    FUNC4("1,  /* Flags */\n");
    FUNC4("0,  /* Reserved3 */\n");
    FUNC4("0,  /* Reserved4 */\n");
    FUNC4("0   /* Reserved5 */\n");
    indent--;
    FUNC4("};\n");
    FUNC0(client, "\n");
}